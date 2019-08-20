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


#define XIL_PL_MAJOR				(261)
#define XIL_PL_MINOR				(0)
#define XIL_F2P_IRQ				(61)

#define XIL_PL_IOCTL_BASE			(0xf7)
#define XIL_PL_IOCTL_WAITFOR_PL_IRQ		_IO(XIL_PL_IOCTL_BASE, 0)


static DECLARE_WAIT_QUEUE_HEAD(pl_wait);
static DEFINE_RAW_SPINLOCK(wait_lock);/* protect wait variable */  
static volatile int pl_done = 0;


static int pl_open(struct inode *ip, struct file *filp)
{
	pl_done = 0;
	return 0;
}

static int pl_release(struct inode *ip, struct file *filp)
{
	pl_done = 0;
	return 0;
}


static long pl_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
	
	switch(cmd)
	{
		case XIL_PL_IOCTL_WAITFOR_PL_IRQ:
		{
			unsigned long flags;

			wait_event(pl_wait, pl_done == 1);
			raw_spin_lock_irqsave(&wait_lock, flags);
			pl_done = 0;
			raw_spin_unlock_irqrestore(&wait_lock, flags);
			break;
		}

		default:
			printk("cache ioctl command error!\n");
			return -EINVAL;
			break;
	}
	return 0;
}


static const struct file_operations pl_fops = {
	.open 		= pl_open,
	.unlocked_ioctl = pl_ioctl,
	.release	= pl_release,
};



irqreturn_t pl_irq(int irq, void *arg)
{
	unsigned long flags;
	
	printk("it is pl interrupt!\n");

	raw_spin_lock_irqsave(&wait_lock, flags);
	pl_done = 1;
	raw_spin_unlock_irqrestore(&wait_lock, flags);

	wake_up(&pl_wait);

	return IRQ_HANDLED;
}

static struct class* pl_class;

static char *pl_devnode(struct device *dev, umode_t *mode)
{
	return NULL;
}

static int __init pl_intr_init(void)
{
	int ret;
	
	ret = request_irq(XIL_F2P_IRQ, pl_irq, IRQF_TRIGGER_RISING, "pl_intr_ex", NULL);
	if(ret)
		goto out;
	
	if(register_chrdev(XIL_PL_MAJOR, "Xilinx_PL_F2P", &pl_fops))
	{
		printk("unable to get major %d for xilinx cache devs\n", XIL_PL_MAJOR);
		goto out1;
	}
		
	pl_class = class_create(THIS_MODULE, "x_f2p");
	if(IS_ERR(pl_class))
	{
		goto out2;
	}
		
	pl_class->devnode = pl_devnode;
	
	/* it is device node name */
	device_create(pl_class, NULL, MKDEV(XIL_PL_MAJOR, XIL_PL_MINOR), NULL, "xilinx_f2p");

	return 0;
out2:
	unregister_chrdev(XIL_PL_MAJOR, "Xilinx_PL_F2P");
out1:
	free_irq(XIL_F2P_IRQ, NULL);
out:
	return -1;

}

module_init(pl_intr_init);


static void __exit pl_intr_cleanup(void)
{
	free_irq(XIL_F2P_IRQ, NULL);
	device_destroy(pl_class, MKDEV(XIL_PL_MAJOR, XIL_PL_MINOR));
	class_destroy(pl_class);
	unregister_chrdev(XIL_PL_MAJOR, "Xilinx_PL_F2P");
	return;
}
module_exit(pl_intr_cleanup);


MODULE_AUTHOR("avnet");
MODULE_DESCRIPTION("xilinx pl interrupt demo");
MODULE_LICENSE("GPL");

