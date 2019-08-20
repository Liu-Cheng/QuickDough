#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>

#define XIL_PL_IOCTL_BASE			(0xf7)
#define XIL_PL_IOCTL_WAITFOR_PL_IRQ		_IO(XIL_PL_IOCTL_BASE, 0)
#define XIL_PL_IOCTL_GET_PL_STATUS		_IO(XIL_PL_IOCTL_BASE, 1)


int main(int argc, char *argv[])
{
	int pl_fd;
	int ret;

	pl_fd = open("/dev/xilinx_f2p", O_RDWR);
	if(pl_fd < 0)
	{
		perror("open /dev/xilinx_f2p failed");
		exit(-1);
	}

	while(1)
	{
		ret = ioctl(pl_fd, XIL_PL_IOCTL_WAITFOR_PL_IRQ, 0);
		if(ret < 0)
		{
			perror("ioctl: wait for pl done failed");
			break;
		}
		else
			printf("wait for pl done is ok!\n");
	}
	
	return 0;

}
