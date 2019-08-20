/*
 * kernel module helper for testing CMA
 *
 * Licensed under GPLv2 or later.
 */

#include <linux/module.h>
#include <linux/device.h>
#include <linux/fs.h>
#include <linux/miscdevice.h>
#include <linux/dma-mapping.h>
#include <asm/uaccess.h>
#include <linux/version.h>
#include <linux/init.h>
#include <linux/cdev.h>
#include <linux/slab.h>
#include <linux/vmalloc.h>
#include <linux/mm.h>
#include <linux/dma-mapping.h>
#include <asm/io.h>


#define CMA_SIZE 16
#define IOCTL_BASE (0xf7)
#define IOCTL_GET_PHY_ADDR _IO(IOCTL_BASE, 0)

static struct device *cma_dev;
static dma_addr_t dma_phys;
static void *dma_virt;

static long cma_test_ioctl(struct file *file, unsigned int cmd, unsigned long arg){
    switch(cmd){
        case IOCTL_GET_PHY_ADDR:
            {
                unsigned phy_addr = dma_phys; 
                return phy_addr;
                break;
            }
        default:
            {
                printk("IOCTL command error! \n\r");
                return -EINVAL;
                break;
            }
    }
    return 0;
}

/* any read request will free coherent memory, eg.
 * cat /dev/cma_test
 */
static ssize_t
cma_test_read(struct file *file, char __user *buf, size_t count, loff_t *ppos){
    unsigned int ret;
    ret = copy_to_user(buf, dma_virt, count);
    if(ret != 0){
        printk("Read error! \n\r");
    }
	return 0;
}

/*
 * any write request will alloc coherent memory, eg.
 * echo 0 > /dev/cma_test
 */
static ssize_t
cma_test_write(struct file *file, const char __user *buf, size_t count, loff_t *ppos){
    unsigned int ret;
    ret = copy_from_user(dma_virt, buf, count);
    if(ret != 0){
        printk("Write error! \n\r");
    }
	return 0;
}

int cma_test_mmap(struct file *filp, struct vm_area_struct *vma){
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



static const struct file_operations cma_test_fops = {
    .owner =    THIS_MODULE,
	.read  =    cma_test_read,
	.write =    cma_test_write,
    .mmap = cma_test_mmap,
    .unlocked_ioctl = cma_test_ioctl,
};

static struct miscdevice cma_test_misc = {
	.name = "cma_test",
	.fops = &cma_test_fops,
};

static int __init cma_test_init(void){
    int ret = 0;

	ret = misc_register(&cma_test_misc);
	if (unlikely(ret)) {
		pr_err("failed to register cma test misc device!\n");
		return ret;
	}
	cma_dev = cma_test_misc.this_device;
	cma_dev->coherent_dma_mask = ~0;
	_dev_info(cma_dev, "registered.\n");

    // Allocate using CMA
    if (!dma_virt) {
        dma_virt = dma_alloc_coherent(cma_dev, CMA_SIZE * SZ_1M, &dma_phys, GFP_KERNEL);

        if (dma_virt) {
            void *p;
            /* touch every page in the allocated memory */
            for (p = dma_virt; p <  dma_virt + CMA_SIZE * SZ_1M; p += PAGE_SIZE)
                *(u32 *)p = 0;

            _dev_info(cma_dev, "alloc virt: %p phys: %p\n", dma_virt, (void *)dma_phys);
        } else {
            dev_err(cma_dev, "no mem in CMA area\n");
            ret = -ENOMEM;
        }
    }
    printk("Allocated physical address is %d. \n\r", dma_phys);

    return ret;
}
module_init(cma_test_init);

static void __exit cma_test_exit(void){

    if (dma_virt) {
        dma_free_coherent(cma_dev, CMA_SIZE * SZ_1M, dma_virt, dma_phys);
        _dev_info(cma_dev, "free virt: %p phys: %p\n", dma_virt, (void *)dma_phys);
        dma_virt = NULL;
    }

    misc_deregister(&cma_test_misc);
}
module_exit(cma_test_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Cheng Liu");
MODULE_DESCRIPTION("kernel module to help the test of CMA");
MODULE_ALIAS("CMA test");
