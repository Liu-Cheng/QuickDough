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
#include <linux/poll.h>


#define XIL_PL_MAJOR				    (261)
#define XIL_PL_MINOR				    (0)
#define XIL_F2P_IRQ				        (61)
#define ACC_BASE_ADDR                   (0x43C00000)
#define MAX_COUNT_OFFSET                (4)
#define ACC_START_OFFSET                (0)

#define DEVICE_NAME                     "acc_f2p"
#define XIL_PL_IOCTL_BASE			    (0xf7)
#define XIL_PL_IOCTL_READ		        _IO(XIL_PL_IOCTL_BASE, 0)
#define XIL_PL_IOCTL_GET_MAX_COUNT      _IO(XIL_PL_IOCTL_BASE, 1)
#define XIL_PL_IOCTL_SET_MAX_COUNT      _IO(XIL_PL_IOCTL_BASE, 2)
#define XIL_PL_IOCTL_ACC_START          _IO(XIL_PL_IOCTL_BASE, 3)
#define XIL_PL_IOCTL_ACC_STOP           _IO(XIL_PL_IOCTL_BASE, 4)
#define XIL_PL_IOCTL_WRITE              _IO(XIL_PL_IOCTL_BASE, 5)

static void* acc_ptr;
static struct class *pl_class;
static struct fasync_struct *pl_async;
static DECLARE_WAIT_QUEUE_HEAD(pl_wait);

static int pl_open(struct inode *ip, struct file *filp){
    pl_done = 0;
    return 0;
}

static int pl_release(struct inode *ip, struct file *filp){
    pl_done = 0;
    return 0;
}

static long pl_ioctl(struct file *file, unsigned int cmd, unsigned long arg){

    switch(cmd){
        case XIL_PL_IOCTL_READ:
            {
                unsigned data_out;
                data_out = ioread32(acc_ptr + arg);
                return data_out;
                break;
            }

        case XIL_PL_IOCTL_WRITE:
            {
                printk("Nothing needs to be written. \n\r");
                break;
            }

        case XIL_PL_IOCTL_GET_MAX_COUNT:
            {
                unsigned max_count;
                max_count = ioread32(acc_ptr + MAX_COUNT_OFFSET);
                return max_count;
                break;
            }

        case XIL_PL_IOCTL_SET_MAX_COUNT:
            {
                iowrite32(0, acc_ptr + ACC_START_OFFSET);
                iowrite32(arg, acc_ptr + MAX_COUNT_OFFSET);
                iowrite32(1, acc_ptr + ACC_START_OFFSET);
                break;
            }

        case XIL_PL_IOCTL_ACC_START:
            {
                iowrite32(1, acc_ptr + ACC_START_OFFSET);
                break;
            }

        case XIL_PL_IOCTL_ACC_STOP:
            {
                iowrite32(0, acc_ptr + ACC_START_OFFSET);
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

static unsigned pl_poll(struct file *file, poll_table *wait){  
    unsigned int mask = 0;  
    poll_wait(file, &pl_wait, wait); 

    if (pl_done)  
        mask |= POLLIN | POLLRDNORM;  

    return mask;  
}  

static int irq_fasync(int fd, struct file *filp, int on) {  
    printk("driver: drv_fasync\n");  
    return fasync_helper(fd, filp, on, &pl_async);  
}  

static const struct file_operations pl_fops = {
    .open 		= pl_open,
    .unlocked_ioctl = pl_ioctl,
    .release	= pl_release,
};

irqreturn_t pl_irq(int irq, void *arg){

    printk("It is pl interruption!\n");
    pl_done = 1;
    wake_up_interruptible(&pl_wait);    
    kill_fasync(&pl_async, SIGIO, POLL_IN);  
    return IRQ_RETVAL(IRQ_HANDLED); 

}

static void acc_init(void){
    // Set the max_count
    acc_ptr = ioremap(ACC_BASE_ADDR, 0x100);
    iowrite32(0, acc_ptr + ACC_START_OFFSET);
    iowrite32(0x10000000, acc_ptr + MAX_COUNT_OFFSET);
}

static int __init pl_intr_init(void){
    int ret;

    ret = request_irq(XIL_F2P_IRQ, pl_irq, IRQF_TRIGGER_RISING, DEVICE_NAME, NULL);
    if(ret)
        goto out;

    if(register_chrdev(XIL_PL_MAJOR, DEVICE_NAME, &pl_fops)){
        printk("unable to get major %d for acc_ip\n", XIL_PL_MAJOR);
        goto out1;
    }

    pl_class = class_create(THIS_MODULE, DEVICE_NAME);  
    device_create(pl_class, NULL, MKDEV(XIL_PL_MAJOR, 0), NULL, DEVICE_NAME); 

    acc_init();

    return 0;

out1:
    free_irq(XIL_F2P_IRQ, NULL);
out:
    return -1;

}

module_init(pl_intr_init);

static void __exit pl_intr_cleanup(void){
    free_irq(XIL_F2P_IRQ, NULL);
    unregister_chrdev(XIL_PL_MAJOR, DEVICE_NAME);
    class_destroy(pl_class);
}

module_exit(pl_intr_cleanup);

MODULE_AUTHOR("Cheng Liu");
MODULE_DESCRIPTION("Sensetime Zedboard Interruption Demo");
MODULE_LICENSE("GPL");

