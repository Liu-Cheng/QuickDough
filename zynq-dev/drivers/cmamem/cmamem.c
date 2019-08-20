#include <linux/miscdevice.h>  
#include <linux/platform_device.h>  
#include <linux/fs.h>  
#include <linux/file.h>  
#include <linux/mm.h>  
#include <linux/list.h>  
#include <linux/mutex.h>  
#include <linux/debugfs.h>  
#include <linux/mempolicy.h>  
#include <linux/sched.h>  
#include <linux/module.h>  
#include <asm/io.h>  
#include <asm/uaccess.h>  
#include <asm/cacheflush.h>  
#include <linux/dma-mapping.h>  
#include <linux/export.h>  
  
#include "cmamem.h"  
  
#define DEVICE_NAME "cmamem"   
  
  
enum cma_status{  
    UNKNOW_STATUS = 0,  
    HAVE_ALLOCED = 1,  
    HAVE_MMAPED =2,  
};  
  
struct cmamem_dev {  
    unsigned int count;  
    struct miscdevice dev;  
    struct mutex cmamem_lock;  
    struct list_head info_list;  
};  
  
struct current_status{  
        int status;  
        int id_count;  
        dma_addr_t phy_base;  
};  
  
static struct current_status cmamem_status;  
static struct cmamem_dev cmamem_dev;  
static struct cmamem_info cma_info[32];  
static long cmamem_ioctl(struct file *file, unsigned int cmd, unsigned long arg) {  
    int ret = 0;  
    int size = 0;  
    dma_addr_t map_dma;  
  
    switch(cmd){  
        case CMEM_ALLOCATE:  
        {  
            printk(KERN_ERR"cmamem_ioctl:CMEM_ALLOCATE\n");  
            cmamem_status.id_count = cmamem_dev.count++;  
            cma_info[cmamem_status.id_count].id = cmamem_status.id_count;  
            if ((ret = copy_from_user(&cma_info[cmamem_status.id_count], (void __user *)arg,  
            sizeof(struct cmamem_info))))  
            {  
                printk(KERN_ERR"cmamem_ioctl:CMEM_ALLOCATE:copy_from_user error:%d\n", ret);  
                ret = -EFAULT;  
                goto err;  
            }  
      
            size = cma_info[cmamem_status.id_count].len;  
            size = PAGE_ALIGN(size);  
            if(size == 0)  
            {  
                printk(KERN_ERR"size is 0\n");  
                ret = -ENOMEM;  
                goto err;  
            }  
            printk(KERN_ERR"cmamem_ioctl:CMEM_ALLOCATE:start alloc:%d,size:%d\n", cmamem_status.id_count, cma_info[cmamem_status.id_count].len);  
            cma_info[cmamem_status.id_count].mem_base = (unsigned int)dma_alloc_writecombine(NULL, size, &map_dma, GFP_KERNEL);  
            if (!cma_info[cmamem_status.id_count].mem_base){  
                printk(KERN_ERR "dma alloc fail:%d!\n", __LINE__);  
                ret = -ENOMEM;  
                goto err;  
            }  
              
            printk(KERN_ERR"map_dma:0x%08x,size:%d\n", map_dma, size);  
              
            cma_info[cmamem_status.id_count].phy_base = map_dma;  
            cmamem_status.phy_base = map_dma;  
  
            mutex_lock(&cmamem_dev.cmamem_lock);  
              
            cmamem_status.status = HAVE_ALLOCED;  
              
            mutex_unlock(&cmamem_dev.cmamem_lock);  
            break;  
        }  
        default:  
        {  
            printk(KERN_INFO "cma mem not support command\n");  
            break;  
        }  
    }  
    err:  
    return ret;  
}  
  
  
static int cmamem_mmap(struct file *filp, struct vm_area_struct *vma)  
{  
    unsigned long start = vma->vm_start;  
    unsigned long size = vma->vm_end - vma->vm_start;  
    unsigned long offset = vma->vm_pgoff << PAGE_SHIFT;  
    unsigned long page, pos;  
  
      
    //dump_stack();  
  
    if(cmamem_status.status != HAVE_ALLOCED)  
    {  
        printk(KERN_ERR"%s, you should allocted memory firstly\n", __func__);  
        return -EINVAL;   
    }  
      
      
    printk( "start=0x%08x offset=0x%08x\n", (unsigned int)start, (unsigned int)offset );  
  
    pos = (unsigned long)cmamem_status.phy_base + offset;  
    page = pos >> PAGE_SHIFT ;  
    if( remap_pfn_range( vma, start, page, size, PAGE_SHARED )) {  
        return -EAGAIN;  
    }  
    else{  
        printk( "remap_pfn_range %u\n success\n", (unsigned int)page );  
    }  
    vma->vm_flags &= ~VM_IO;   
    vma->vm_flags |=  (VM_DONTEXPAND | VM_DONTDUMP);  
      
    return 0;  
}  

static ssize_t cmamem_read(struct file *file, char __user *buf, size_t count, loff_t *ppos){
    unsigned int ret;
    ret = copy_to_user(buf, (char*)(cma_info[cmamem_status.id_count].mem_base), count);
    if(ret != 0){
        printk("Read error! \n\r");
    }
	return 0;
}

/*
 * any write request will alloc coherent memory, eg.
 * echo 0 > /dev/cma_test
 */
static ssize_t cmamem_write(struct file *file, const char __user *buf, size_t count, loff_t *ppos){
    unsigned int ret;
    ret = copy_from_user((char*)(cma_info[cmamem_status.id_count].mem_base), buf, count);
    if(ret != 0){
        printk("Write error! \n\r");
    }
	return 0;
}

 
static struct file_operations dev_fops = {    
    .owner          = THIS_MODULE,    
    .unlocked_ioctl = cmamem_ioctl,    
    .mmap = cmamem_mmap,  
    .read = cmamem_read,
    .write = cmamem_write,
};  
  
static int __init cmamem_init(void)  
{  
    printk(KERN_ERR"%s\n", __func__);  
    mutex_init(&cmamem_dev.cmamem_lock);  
    INIT_LIST_HEAD(&cmamem_dev.info_list);  
    cmamem_dev.count = 0;  
    cmamem_dev.dev.name = DEVICE_NAME;  
    cmamem_dev.dev.minor = MISC_DYNAMIC_MINOR;  
    cmamem_dev.dev.fops = &dev_fops;  
      
    cmamem_status.status = UNKNOW_STATUS;  
    cmamem_status.id_count = -1;  
    cmamem_status.phy_base = 0;  
      
      
    return misc_register(&cmamem_dev.dev);  
}  
  
static void __exit cmamem_exit(void)    
{    
    printk(KERN_ERR"%s\n", __func__);  
    misc_deregister(&cmamem_dev.dev);    
}   
  
  
module_init(cmamem_init);  
module_exit(cmamem_exit);  
MODULE_LICENSE("GPL");  
