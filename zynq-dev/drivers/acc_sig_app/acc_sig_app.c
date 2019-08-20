#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/ioctl.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <poll.h>  
#include <signal.h>  
#include <unistd.h>  

#define XIL_PL_IOCTL_BASE			    (0xf7)
#define XIL_PL_IOCTL_READ		        _IO(XIL_PL_IOCTL_BASE, 0)
#define XIL_PL_IOCTL_GET_MAX_COUNT		_IO(XIL_PL_IOCTL_BASE, 1)
#define XIL_PL_IOCTL_SET_MAX_COUNT      _IO(XIL_PL_IOCTL_BASE, 2)
#define XIL_PL_IOCTL_ACC_START          _IO(XIL_PL_IOCTL_BASE, 3)
#define XIL_PL_IOCTL_ACC_STOP           _IO(XIL_PL_IOCTL_BASE, 4)
#define XIL_PL_IOCTL_WRITE              _IO(XIL_PL_IOCTL_BASE, 5)

void usr_handler(int sigNo){
    printf("SigNo %d is caught \n\r", sigNo);
    printf("Add user processing here.\n\r");
    printf("For instance, you may start to copy kernel data here. \n\r");
    printf("--------------------------\n\r");
    exit(0);
}

int main(int argc, char *argv[]){
	int ret;
    int pl_fd;

	pl_fd = open("/dev/acc_f2p", O_RDWR);
	if(pl_fd < 0){
		perror("open /dev/acc_f2p failed");
		exit(-1);
	}
    printf("Device is opened. \n");

    signal(SIGIO, usr_handler);
    fcntl(STDIN_FILENO,F_SETOWN,getpid());
    int oflags = fcntl(STDIN_FILENO, F_GETFL);
    fcntl(STDIN_FILENO, F_SETFL, oflags | FASYNC);

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

    while(1);

    return 0;
}
