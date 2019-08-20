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

#define DMA_DEMO_MAJOR				    (261)
#define DMA_DEMO_MINOR				    (0)
#define DMA_DEMO_IRQ				    (61)
#define DMA_DEMO_BASE_ADDR              (0x43C00000)
#define DMA_DEMO_START_OFFSET           (0)
#define DMA_DEMO_SRC_OFFSET             (0x4)
#define DMA_DEMO_DST_OFFSET             (0x8)
#define DMA_DEMO_LEN_OFFSET             (0xC)
#define DMA_DEMO_INTR_INIT0             (0x14)
#define DMA_DEMO_INTR_INIT1             (0x18)
#define DMA_DEMO_INTR_CLC               (0x1C)

#define CMA_SIZE                        1
#define DEVICE_NAME                     "dma_demo"
#define IOCTL_BASE			            (0xf7)
#define IOCTL_WAITFOR_IRQ		        _IO(IOCTL_BASE, 0)
#define IOCTL_DMA_DEMO_START            _IO(IOCTL_BASE, 1)
#define IOCTL_DMA_DEMO_VERIFY           _IO(IOCTL_BASE, 2)
#define IOCTL_DMA_DEMO_UPDATE           _IO(IOCTL_BASE, 3)
#define IOCTL_DMA_DEMO_SET_DIR          _IO(IOCTL_BASE, 4)
#define IOCTL_DMA_DEMO_UNMAP            _IO(IOCTL_BASE, 5)

#define SRC_DDR_ADDR                    (0x10000000)
//#define DST_DDR_ADDR                    (0x12000000)
#define LEN                             (4*1024)
#define PLEN                            (128)

static DECLARE_WAIT_QUEUE_HEAD(dma_wait);
static DEFINE_RAW_SPINLOCK(wait_lock); /* protect wait variable */  
static volatile int dma_done = 0;
static void* dma_demo_ptr;
static void* src_ptr;
//static void* dst_ptr;
static dma_addr_t dma_phys;
static void *dma_virt;
static int dma_demo_major = DMA_DEMO_MAJOR;
struct cdev cdev;
//static unsigned int val = 0;

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

static int verify(void){
    return 0;
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

    int i;
    unsigned int offset = 0;
    unsigned int tmp = 0;
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
                iowrite32(SRC_DDR_ADDR, dma_demo_ptr + DMA_DEMO_SRC_OFFSET);
                iowrite32(dma_phys, dma_demo_ptr + DMA_DEMO_DST_OFFSET);
                iowrite32(LEN, dma_demo_ptr + DMA_DEMO_LEN_OFFSET);
                iowrite32(0x1, dma_demo_ptr + DMA_DEMO_INTR_INIT0);
                iowrite32(0x1, dma_demo_ptr + DMA_DEMO_INTR_INIT1);
                iowrite32(0x1, dma_demo_ptr + DMA_DEMO_START_OFFSET);
                iowrite32(0, dma_demo_ptr + DMA_DEMO_START_OFFSET);
                break;
            }

        case IOCTL_DMA_DEMO_UPDATE:
            {
                for(i = 0; i < LEN/4; i++){
                    //tmp = ioread32(src_ptr + offset);
                    tmp = *((int*)dma_virt + offset);
                    tmp++;
                    //iowrite32(tmp, src_ptr + offset);
                    *((int*)dma_virt + offset) = tmp;
                    offset += 1;
                }
                break;

            }
        case IOCTL_DMA_DEMO_SET_DIR:
            {
                if(arg == 0){ // DMA from device to main memory
                    iowrite32(SRC_DDR_ADDR, dma_demo_ptr + DMA_DEMO_SRC_OFFSET);
                    iowrite32(dma_phys, dma_demo_ptr + DMA_DEMO_DST_OFFSET);
                }
                else{ // DMA from main memory to device
                    iowrite32(dma_phys, dma_demo_ptr + DMA_DEMO_SRC_OFFSET);
                    iowrite32(SRC_DDR_ADDR, dma_demo_ptr + DMA_DEMO_DST_OFFSET);
                }
                break;
            }
        case IOCTL_DMA_DEMO_UNMAP:
            {
                dma_free_coherent(NULL, CMA_SIZE * SZ_1M, dma_virt, dma_phys);
                break;
            }
        case IOCTL_DMA_DEMO_VERIFY:
            {
                return verify();
                break;
            }
        default:
            {
                printk("cache ioctl command error!\n");
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

irqreturn_t dma_irq(int irq, void *arg){

    unsigned long flags;
    //printk("It is pl interruption!\n");
    raw_spin_lock_irqsave(&wait_lock, flags);
    iowrite32(0x1, dma_demo_ptr + DMA_DEMO_INTR_CLC);
    iowrite32(0, dma_demo_ptr + DMA_DEMO_INTR_INIT0);
    iowrite32(0, dma_demo_ptr + DMA_DEMO_INTR_INIT1);
    dma_done = 1;
    raw_spin_unlock_irqrestore(&wait_lock, flags);
    wake_up(&dma_wait);

    return IRQ_HANDLED;

}

static void pre_init(void){

    int i;
    int ret;
    unsigned int offset = 0;
    dma_demo_ptr = ioremap(DMA_DEMO_BASE_ADDR, 0x100);
    //src_ptr = phys_to_virt(SRC_DDR_ADDR);
    src_ptr = phys_to_virt(SRC_DDR_ADDR);

    //memset(src_ptr, 0, LEN);
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

}

static int __init dma_demo_init(void){
    int ret;

    // Register the device
    dev_t devno = MKDEV(dma_demo_major, 0);
    if (dma_demo_major)
        ret = register_chrdev_region(devno, 1, DEVICE_NAME);
    else {
        ret = alloc_chrdev_region(&devno, 0, 1, DEVICE_NAME);
        dma_demo_major = MAJOR(devno);
    } 
    if(ret < 0){
        printk("Device registeration error. \n\r");
        return ret;
    }

    // Register interruption
    ret = request_irq(DMA_DEMO_IRQ, dma_irq, IRQF_TRIGGER_RISING, DEVICE_NAME, NULL);
    //ret = request_irq(DMA_DEMO_IRQ, dma_irq, 0, DEVICE_NAME, NULL);
    if(ret) {
        goto fail_irq_req;
    }

    // Initialize the character device
    cdev_init(&cdev, &dma_demo_fops);
    cdev.owner = THIS_MODULE;
    cdev.ops = &dma_demo_fops;
    cdev_add(&cdev, MKDEV(dma_demo_major, 0), 1);
             
    pre_init();
    return 0;
            
fail_irq_req: 
    unregister_chrdev_region(devno, 1);
    free_irq(DMA_DEMO_IRQ, NULL);
    return -1;

}

module_init(dma_demo_init);

static void __exit dma_demo_cleanup(void){
    dma_free_coherent(NULL, CMA_SIZE * SZ_1M, dma_virt, dma_phys);
    free_irq(DMA_DEMO_IRQ, NULL);
    unregister_chrdev(DMA_DEMO_MAJOR, DEVICE_NAME);
    return;
}

module_exit(dma_demo_cleanup);

MODULE_AUTHOR("Cheng Liu");
MODULE_DESCRIPTION("Sensetime Zedboard Interruption Demo");
MODULE_LICENSE("GPL");

