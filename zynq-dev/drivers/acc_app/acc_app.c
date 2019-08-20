#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>

#define XIL_PL_IOCTL_BASE			    (0xf7)
#define XIL_PL_IOCTL_WAITFOR_PL_IRQ		_IO(XIL_PL_IOCTL_BASE, 0)
#define XIL_PL_IOCTL_GET_MAX_COUNT		_IO(XIL_PL_IOCTL_BASE, 1)
#define XIL_PL_IOCTL_SET_MAX_COUNT      _IO(XIL_PL_IOCTL_BASE, 2)
#define XIL_PL_IOCTL_ACC_START          _IO(XIL_PL_IOCTL_BASE, 3)
#define XIL_PL_IOCTL_ACC_STOP           _IO(XIL_PL_IOCTL_BASE, 4)


int main(int argc, char *argv[]){
	int pl_fd;
    int num_of_intr = 0;
	int ret;

	pl_fd = open("/dev/acc_f2p", O_RDWR);
	if(pl_fd < 0){
		perror("open /dev/acc_f2p failed");
		exit(-1);
	}
    printf("Device is opened. \n");

    ret = ioctl(pl_fd, XIL_PL_IOCTL_SET_MAX_COUNT, 0x10000000);
    if(ret < 0){
        printf("Failed to reset acc_ip max_count. \n");
        return 0;
    }
    printf("max_count is set. \n");

    ret = ioctl(pl_fd, XIL_PL_IOCTL_ACC_START, 0);
    if(ret < 0){
        printf("Failed to start the acc_ip. \n");
        return 0;
    }
    printf("Device is started. \n");

    printf("Waiting for interruption. \n");
	while(num_of_intr < 5){
		ret = ioctl(pl_fd, XIL_PL_IOCTL_WAITFOR_PL_IRQ, 0);
		if(ret < 0){
			perror("ioctl: wait for pl done failed");
			break;
		}
		else{
            num_of_intr++;
			printf("wait for pl done is ok!\n");
        }
	}

    ret = ioctl(pl_fd, XIL_PL_IOCTL_ACC_STOP, 0);
    if(ret < 0){
        printf("Failed to stop acc_ip. \n");
        return 0;
    }
	
    printf("acc_ip driver test is successful. \n");
	return 0;

}
