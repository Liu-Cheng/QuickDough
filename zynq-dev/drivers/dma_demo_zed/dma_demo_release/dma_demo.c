#include <linux/cdev.h>
#include <linux/fs.h>
#include <linux/mman.h>
#include <linux/init.h>
#include <linux/spinlock.h>
#include <linux/capability.h>
#include <linux/ptrace.h>
#include <linux/device.h>
#include <linux/splice.h>
#include <linux/pfn.h>
#include <linux/export.h>
#include <linux/io.h>
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/delay.h>
#include <linux/interrupt.h>
#include <linux/sched.h>
#include <uapi/linux/ioctl.h>
#include <asm/uaccess.h>
#include <asm/cacheflush.h>
#include <asm/outercache.h>
#include <linux/dma-mapping.h>
#include <linux/version.h>
#include <linux/slab.h>
#include <linux/vmalloc.h>
#include <linux/dma-mapping.h>
#include <linux/mm.h>
#include <linux/of_address.h>
#include <linux/of_device.h>
#include <linux/of_platform.h>

/* Standard module information*/
MODULE_LICENSE     ("GPL");
MODULE_AUTHOR      ("Sensetime");
MODULE_DESCRIPTION ("A driver example of simple data transmission peripheral on Zynq");

#define DRIVER_NAME                     "dma_demo"
#define DEVICE_NAME                     "dma_demo"
//#define DMA_DEMO_MAJOR				(261)
//#define DMA_DEMO_MINOR				(0)
//#define DMA_DEMO_IRQ				    (61)
//#define DMA_DEMO_BASE_ADDR            (0x43C00000)
#define DMA_DEMO_START_OFFSET           (0)
#define DMA_DEMO_SRC_OFFSET             (0x4)
#define DMA_DEMO_DST_OFFSET             (0x8)
#define DMA_DEMO_LEN_OFFSET             (0xC)
#define DMA_DEMO_INTR_INIT0             (0x14)
#define DMA_DEMO_INTR_INIT1             (0x18)
#define DMA_DEMO_INTR_CLC               (0x1C)

#define IOCTL_BASE			            (0xf7)
#define IOCTL_WAITFOR_IRQ		        _IO(IOCTL_BASE, 0)
#define IOCTL_DMA_DEMO_START            _IO(IOCTL_BASE, 1)
#define SRC_DDR_ADDR                    (0x10000000)
//#define DST_DDR_ADDR                  (0x12000000)
#define LEN                             (4*1024)
#define PLEN                            (128)
#define CMA_SIZE                        1

static DECLARE_WAIT_QUEUE_HEAD(dma_wait);
static DEFINE_RAW_SPINLOCK(wait_lock); 
static volatile int dma_done = 0;
static void* dma_demo_ptr;
static void* src_ptr;
//static void* dst_ptr;
static dma_addr_t dma_phys;
static void *dma_virt;
static struct dma_demo_local *lp = NULL;
static struct cdev dma_demo;
static dev_t devno;

struct dma_demo_local {
	int irq;
	unsigned long mem_start;
	unsigned long mem_end;
	void __iomem *base_addr;
};

static irqreturn_t dma_demo_irq(int irq, void *lp){
    unsigned long flags;
    raw_spin_lock_irqsave(&wait_lock, flags);
    iowrite32(0x1, dma_demo_ptr + DMA_DEMO_INTR_CLC);
    dma_done = 1;
    raw_spin_unlock_irqrestore(&wait_lock, flags);
    wake_up(&dma_wait);
	return IRQ_HANDLED;
}

static int dma_demo_open(struct inode *ip, struct file *filp){
    dma_done = 0;
    return 0;
}

static int dma_demo_release(struct inode *ip, struct file *filp){
    dma_done = 0;
    return 0;
}

static void print_array(void){
    int i;
    unsigned int offset  = 0;
    for(i = 0; i < PLEN/4; i++){
       printk("src[%d] = %x, dst[%d] = %x \r\n", i, *((int*)src_ptr + offset), i, *((int*)dma_virt + offset));
       offset += 1;
    }
}

static int cma_allocate(void){
    dma_virt = dma_alloc_coherent(NULL, CMA_SIZE * SZ_1M, &dma_phys, GFP_KERNEL);
    if (dma_virt) {
        void *p;
        for (p = dma_virt; p <  dma_virt + CMA_SIZE * SZ_1M; p += PAGE_SIZE)
            *(u32 *)p = 0;
        _dev_info(NULL, "alloc virt: %p phys: %p\n", dma_virt, (void *)dma_phys);
    } else {
        dev_err(NULL, "no mem in CMA area\n");
        return -ENOMEM;
    }
    printk("Allocated physical address is %d. \n\r", dma_phys);
    return 0;
}

static ssize_t
dma_demo_read(struct file *file, char __user *buf, size_t count, loff_t *ppos){
    unsigned int ret;
    ret = copy_to_user(buf, src_ptr, count);
    if(ret != 0){
        printk("Read error! \n\r");
    }
	return 0;
}

static ssize_t
dma_demo_write(struct file *file, const char __user *buf, size_t count, loff_t *ppos){
    unsigned int ret;
    ret = copy_from_user(src_ptr, buf, count);
    if(ret != 0){
        printk("Write error! \n\r");
    }
	return 0;
}

int dma_demo_mmap(struct file *filp, struct vm_area_struct *vma){
    unsigned long start = vma->vm_start;  
    unsigned long size = vma->vm_end - vma->vm_start;  
    unsigned long offset = vma->vm_pgoff << PAGE_SHIFT;  
    unsigned long page, pos;  
      
    printk( "start=0x%08x offset=0x%08x\n", (unsigned int)start, (unsigned int)offset );  
  
    pos = (unsigned long)dma_phys + offset;  
    page = pos >> PAGE_SHIFT ;  
    if( remap_pfn_range( vma, start, page, size, PAGE_SHARED)) {  
        return -EAGAIN;  
    }  
    else{  
        printk( "remap_pfn_range %u\n success\n", (unsigned int)page );  
    }  
    vma->vm_flags &= ~VM_IO;   
    vma->vm_flags |=  (VM_DONTEXPAND | VM_DONTDUMP);  
      
    return 0; 
}


static long dma_demo_ioctl(struct file *file, unsigned int cmd, unsigned long arg){
    switch(cmd){
        case IOCTL_WAITFOR_IRQ:
            {
                unsigned long flags;
                wait_event(dma_wait, dma_done == 1);
                raw_spin_lock_irqsave(&wait_lock, flags);
                dma_done = 0;
                raw_spin_unlock_irqrestore(&wait_lock, flags);
                print_array();
                break;
            }

        case IOCTL_DMA_DEMO_START:
            {
                __cpuc_flush_dcache_area(src_ptr, LEN);
                outer_clean_range(SRC_DDR_ADDR, SRC_DDR_ADDR + (LEN - 1));
                iowrite32(0x1, dma_demo_ptr + DMA_DEMO_START_OFFSET);
                iowrite32(0, dma_demo_ptr + DMA_DEMO_START_OFFSET);
                break;
            }
        default:
            {
                printk("ioctl command error!\n");
                return -EINVAL;
                break;
            }
    }
    return 0;

}


static const struct file_operations dma_demo_fops = {
    .open 		    = dma_demo_open,
    .unlocked_ioctl = dma_demo_ioctl,
    .release	    = dma_demo_release,
    .mmap           = dma_demo_mmap,
    .read           = dma_demo_read,
    .write          = dma_demo_write,
};

static void pre_init(void){

    int i;
    int ret;
    unsigned int offset = 0;
    dma_demo_ptr = lp->base_addr; 
    src_ptr = phys_to_virt(SRC_DDR_ADDR);
    ret = cma_allocate();
    if(ret < 0){
        printk("cma allocation error. \n\r");
    }

    // Init the data in DDR of src and dst
    for(i = 0; i < LEN/4; i++){
        *((int*)dma_virt + offset) = 0;
        *((int*)src_ptr + offset) = 8;
        offset += 1;
    }

    // Init the registers
    iowrite32(SRC_DDR_ADDR, dma_demo_ptr + DMA_DEMO_SRC_OFFSET);
    iowrite32(dma_phys, dma_demo_ptr + DMA_DEMO_DST_OFFSET);
    iowrite32(LEN, dma_demo_ptr + DMA_DEMO_LEN_OFFSET);
    iowrite32(0x1, dma_demo_ptr + DMA_DEMO_INTR_INIT0);
    iowrite32(0x1, dma_demo_ptr + DMA_DEMO_INTR_INIT1);

}

static int dma_demo_probe(struct platform_device *pdev){
	struct resource *r_irq; /* Interrupt resources */
	struct resource *r_mem; /* IO mem resources */
	struct device *dev = &pdev->dev;
    int ret = 0;
	int rc = 0;

    dev_info(dev, "Device Tree Probing\n");

    // Allocate device number
    ret = alloc_chrdev_region(&devno, 0, 1, DRIVER_NAME);
    if(ret < 0){
        dev_err(dev, "device number allocation failed\n");
        return -ENODEV;
    }
    else{
        printk("Device number is allocated successfully. dev->major=%d, dev->minor=%d.\n", MAJOR(devno), MINOR(devno));
    }

    // Initialize cdev
    cdev_init(&dma_demo, &dma_demo_fops);
    dma_demo.owner = THIS_MODULE;
    ret = cdev_add(&dma_demo, devno, 1);
    if (ret < 0){
        dev_err(dev, "cdev_add failure!\n");
        return -EINVAL;
    }

	/* Get iospace for the device */
	r_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
	if (!r_mem) {
		dev_err(dev, "invalid address\n");
		return -ENODEV;
	}
	
	lp = (struct dma_demo_local *) kmalloc(sizeof(struct dma_demo_local), GFP_KERNEL);
	if (!lp) {
		dev_err(dev, "Cound not allocate dma_demo device\n");
		return -ENOMEM;
	}
	
	dev_set_drvdata(dev, lp);
	lp->mem_start = r_mem->start;
	lp->mem_end = r_mem->end;

	if (!request_mem_region(lp->mem_start,
				lp->mem_end - lp->mem_start + 1,
				DRIVER_NAME)) {
		dev_err(dev, "Couldn't lock memory region at %p\n",
			(void *)lp->mem_start);
		rc = -EBUSY;
		goto error1;
	}

	lp->base_addr = ioremap(lp->mem_start, lp->mem_end - lp->mem_start + 1);
	if (!lp->base_addr) {
		dev_err(dev, "dma_demo: Could not allocate iomem\n");
		rc = -EIO;
		goto error2;
	}

	/* Get IRQ for the device */
	r_irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
	if (!r_irq) {
		dev_info(dev, "no IRQ found\n");
		dev_info(dev, "dma_demo at 0x%08x mapped to 0x%08x\n",
			(unsigned int __force)lp->mem_start,
			(unsigned int __force)lp->base_addr);
		return 0;
	}
	lp->irq = r_irq->start;
	
	rc = request_irq(lp->irq, &dma_demo_irq, 0, DRIVER_NAME, lp);
	if (rc) {
		dev_err(dev, "testmodule: Could not allocate interrupt %d.\n",
			lp->irq);
		goto error3;
	}

	dev_info(dev,"dma_demo at 0x%08x mapped to 0x%08x, irq=%d\n",
		(unsigned int __force)lp->mem_start,
		(unsigned int __force)lp->base_addr,
		lp->irq);

    // Hardware initialization
    pre_init();

	return 0;

error3:
	free_irq(lp->irq, lp);
error2:
	release_mem_region(lp->mem_start, lp->mem_end - lp->mem_start + 1);
error1:
	kfree(lp);
	dev_set_drvdata(dev, NULL);
	return rc;
}

static int dma_demo_remove(struct platform_device *pdev){
	struct device *dev = &pdev->dev;
	struct dma_demo_local *lp = dev_get_drvdata(dev);
    dma_free_coherent(NULL, CMA_SIZE * SZ_1M, dma_virt, dma_phys);
	free_irq(lp->irq, lp);
	release_mem_region(lp->mem_start, lp->mem_end - lp->mem_start + 1);
	kfree(lp);
	dev_set_drvdata(dev, NULL);
	return 0;
}

#ifdef CONFIG_OF
static struct of_device_id dma_demo_of_match[] = {
	{ .compatible = "xlnx,usr-dma-1.0", },
	{ /* end of list */ },
};
MODULE_DEVICE_TABLE(of, dma_demo_of_match);
#else
# define dma_demo_of_match
#endif


static struct platform_driver dma_demo_driver = {
	.driver = {
		.name = DRIVER_NAME,
		.owner = THIS_MODULE,
		.of_match_table	= dma_demo_of_match,
	},
	.probe		= dma_demo_probe,
	.remove		= dma_demo_remove,
};

static int __init dma_demo_init(void){

	printk("<1>Hello module world.\n");
    return platform_driver_register(&dma_demo_driver);

}


static void __exit dma_demo_exit(void){

	platform_driver_unregister(&dma_demo_driver);
	printk(KERN_ALERT "Goodbye module world.\n");

}

module_init(dma_demo_init);
module_exit(dma_demo_exit);

