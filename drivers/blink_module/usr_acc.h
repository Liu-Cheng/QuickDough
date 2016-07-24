/*
*
* The declarations here have to be in a header file, because
* they need to be known both to the kernel module
* (in chardev.c) and the process calling ioctl (ioctl.c)
*/
#ifndef USR_ACC_H
#define USR_ACC_H

#include <linux/ioctl.h>
/*
* The major device number. We can't rely on dynamic
* registration any more, because ioctls need to know
* it.
*/
#define MAGIC_NUM 100
/*
* Start the accelerator 
*/
#define IOCTL_ACC_START _IOR(MAGIC_NUM, 0, int *)
/*
* _IOR means that we're creating an ioctl command
* number for passing information from a user process
* to the kernel module.
*
* The first arguments, MAGIC_NUM, is the major device
* number we're using.
*
* The second argument is the number of the command
* (there could be several with different meanings).
*
* The third argument is the type we want to get from
* the process to the kernel.
*/
/*
* Get the max_count that is set.
*/
#define DEBUG
#define DEVICE_FILE_NAME "/dev/usr_acc"
#endif
