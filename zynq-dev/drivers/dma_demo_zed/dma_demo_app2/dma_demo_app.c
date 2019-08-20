#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <sys/mman.h>

#define IOCTL_BASE			            (0xf7)
#define IOCTL_WAITFOR_IRQ		        _IO(IOCTL_BASE, 0)
#define IOCTL_DMA_DEMO_START		    _IO(IOCTL_BASE, 1)
#define IOCTL_DMA_DEMO_VERIFY           _IO(IOCTL_BASE, 2)
#define IOCTL_DMA_DEMO_UPDATE           _IO(IOCTL_BASE, 3)
#define IOCTL_DMA_DEMO_SET_DIR          _IO(IOCTL_BASE, 4)
#define IOCTL_DMA_DEMO_UNMAP             _IO(IOCTL_BASE, 5)

#define LEN 128

static int intr_num = 0;

void clearcache(char* begin, char *end){
    const int syscall =     0xf0002;
    __asm __volatile (
            "mov r0, %0\n"
            "mov r1, %1\n"
            "mov r7, %2\n"
            "mov     r2, #0x0\n"
            "svc     0x00000000\n"
            :
            :       "r" (begin), "r" (end), "r" (syscall)
            :       "r0", "r1", "r7"
            );
}   

int main(int argc, char *argv[]){
	int pl_fd;
    int num_of_intr = 0;
	int ret;
    int i;

	pl_fd = open("/dev/dma_demo", O_RDWR);
	if(pl_fd < 0){
		perror("open /dev/dma_demo failed");
		exit(-1);
	}
    printf("Device is opened. \n");

    char *buf = (char*)malloc(sizeof(char)*LEN);
    for(i = 0; i < LEN/4; i++){
        *((int*)buf + i) = i;
    }

    char *kptr;
    kptr = mmap(0, LEN, PROT_READ|PROT_WRITE, MAP_SHARED, pl_fd, 0);
    if (kptr == MAP_FAILED){
        perror("mmap failed. \n\r");
        exit(-1);
    }

    while(intr_num < 2){

        //clearcache(kptr, kptr+0x100);
        ret = ioctl(pl_fd, IOCTL_DMA_DEMO_START, 0);
        if(ret < 0){
            printf("Failed to start the dma demo. \n");
            return 0;
        }

        printf("Waiting for interruption. \n");
        ret = ioctl(pl_fd, IOCTL_WAITFOR_IRQ, 0);
        if(ret < 0){
            perror("ioctl: wait for dma demo done failed");
        }
        else{
            printf("dma demo works fine!\n");
        }
        intr_num++;

        ret = write(pl_fd, buf, LEN);
        //ret = ioctl(pl_fd, IOCTL_DMA_DEMO_UPDATE, 0);

        //printf("\ndma buffer: \n\r");
        //for(i = 0; i < 20; i++){
        //    printf("kptr[%d] = %d \n\r", i, kptr[i]);
        //}

        //for(i = 0; i < 20; i++){
        //    printf("buf[%d] = %d \n\r", i, buf[i]);
        //}
        //ret = ioctl(pl_fd, IOCTL_DMA_DEMO_UNMAP, 0);
        //sleep(10);

    }

   
    printf("DMA verification is successful. \n");
	return 0;

}
