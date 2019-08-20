#include <linux/mm.h>
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

#define DEVICE_NAME                     "dma_demo"
#define IOCTL_BASE			            (0xf7)
#define IOCTL_WAITFOR_IRQ		        _IO(IOCTL_BASE, 0)
#define IOCTL_DMA_DEMO_START            _IO(IOCTL_BASE, 1)
#define IOCTL_DMA_DEMO_VERIFY           _IO(IOCTL_BASE, 2)

#define SRC_DDR_ADDR                    (0x10000000)
#define DST_DDR_ADDR                    (0x12000000)
#define LEN                             (128)

static DECLARE_WAIT_QUEUE_HEAD(dma_wait);
static DEFINE_RAW_SPINLOCK(wait_lock); /* protect wait variable */  
static volatile int dma_done = 0;
static void* dma_demo_ptr;
static void* src_ptr;
static void* dst_ptr;

static int dma_demo_open(struct inode *ip, struct file *filp){
    dma_done = 0;
    return 0;
}

static int dma_demo_release(struct inode *ip, struct file *filp){
    dma_done = 0;
    return 0;
}

static int verify(void){
    int i;
    int tmp;
    unsigned int offset = 0;
    for(i = 0; i < LEN/4; i++){
        tmp = ioread32(dst_ptr + offset);
        if(tmp != 8){
            printk("DMA error, [%d]=%d \n", i, tmp);
            return -1;
        }
        offset += 4;
    }
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
                iowrite32(0x1, dma_demo_ptr + DMA_DEMO_INTR_CLC);
                break;
            }

        case IOCTL_DMA_DEMO_START:
            {
                iowrite32(0x1, dma_demo_ptr + DMA_DEMO_START_OFFSET);
                iowrite32(0, dma_demo_ptr + DMA_DEMO_START_OFFSET);
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


static const struct file_operations pl_fops = {
    .open 		    = dma_demo_open,
    .unlocked_ioctl = dma_demo_ioctl,
    .release	    = dma_demo_release,
};



irqreturn_t dma_irq(int irq, void *arg){

    unsigned long flags;
    printk("It is pl interruption!\n");
    raw_spin_lock_irqsave(&wait_lock, flags);
    dma_done = 1;
    raw_spin_unlock_irqrestore(&wait_lock, flags);
    wake_up(&dma_wait);

    return IRQ_HANDLED;

}

static void pre_init(void){
    // Set the max_count
    int i;
    unsigned int offset = 0;
    dma_demo_ptr = ioremap(DMA_DEMO_BASE_ADDR, 0x100);
    printk("dma device is successfully mapped. \n\r");
    src_ptr = phys_to_virt(SRC_DDR_ADDR);
    printk("SRC_DDR_ADDR is successfully mapped. \n\r");
    dst_ptr = phys_to_virt(DST_DDR_ADDR);
    printk("DST_DDR_ADDR is successfully mapped. \n\r");

    // Init the data in DDR of src and dst
    for(i = 0; i < 0x100/4; i++){
        iowrite32(8, src_ptr + offset);
        iowrite32(0, dst_ptr + offset);
        offset += 4;
    }

    iowrite32(SRC_DDR_ADDR, dma_demo_ptr + DMA_DEMO_SRC_OFFSET);
    iowrite32(DST_DDR_ADDR, dma_demo_ptr + DMA_DEMO_DST_OFFSET);
    iowrite32(LEN, dma_demo_ptr + DMA_DEMO_LEN_OFFSET);
    iowrite32(0x1, dma_demo_ptr + DMA_DEMO_INTR_INIT0);
    iowrite32(0x1, dma_demo_ptr + DMA_DEMO_INTR_INIT1);
}

static int __init dma_demo_init(void){
    int ret;

    ret = request_irq(DMA_DEMO_IRQ, dma_irq, IRQF_TRIGGER_RISING, DEVICE_NAME, NULL);
    if(ret)
        goto out;

    if(register_chrdev(DMA_DEMO_MAJOR, DEVICE_NAME, &pl_fops)){
        printk("unable to get major %d for acc_ip\n", DMA_DEMO_MAJOR);
        goto out1;
    }

    pre_init();

    return 0;

out1:
    free_irq(DMA_DEMO_IRQ, NULL);
out:
    return -1;

}

module_init(dma_demo_init);

static void __exit dma_demo_cleanup(void){
    free_irq(DMA_DEMO_IRQ, NULL);
    unregister_chrdev(DMA_DEMO_MAJOR, DEVICE_NAME);
    return;
}

module_exit(dma_demo_cleanup);

MODULE_AUTHOR("Cheng Liu");
MODULE_DESCRIPTION("Sensetime Zedboard Interruption Demo");
MODULE_LICENSE("GPL");

