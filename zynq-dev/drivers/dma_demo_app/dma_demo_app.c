#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <sys/mman.h>
#include <sys/time.h>
#include <math.h>

#define IOCTL_BASE			            (0xf7)
#define IOCTL_WAITFOR_IRQ		        _IO(IOCTL_BASE, 0)
#define IOCTL_DMA_DEMO_START		    _IO(IOCTL_BASE, 1)
#define IOCTL_DMA_SET_PL_TO_PS          _IO(IOCTL_BASE, 2)
#define IOCTL_DMA_SET_PS_TO_PL          _IO(IOCTL_BASE, 3)
#define IOCTL_DMA_SET_LEN               _IOW(IOCTL_BASE, 4, int)
#define LEN                            (4*1024*1024)

static int id = 0;

void set_buf(char *ptr, int data){
    int i;
    for(i = 0; i < LEN; i++){
        *((char*)ptr + i) = data;
    }
}

int main(int argc, char *argv[]){
	int dev_fd;
    int num_of_intr = 0;
	int ret;
    int i;
    int dma_len[]={4*1024, 16*1024, 64*1024, 256*1024, 1*1024*1024, 2*1024*1024, 4*1024*1024};
    int len;
    struct timeval tpstart,tpend; 
    float timeuse; 

    //char *buf = (char*)malloc(sizeof(char)*LEN);
	dev_fd = open("/dev/dma_demo", O_RDWR);
	if(dev_fd < 0){
		perror("open /dev/dma_demo failed");
		exit(-1);
	}
    printf("Device is opened. \n");

    char *kptr;
    kptr = mmap(0, LEN, PROT_READ|PROT_WRITE, MAP_SHARED, dev_fd, 0);
    if (kptr == MAP_FAILED){
        perror("mmap failed. \n\r");
        exit(-1);
    }

    while(id < 7){
        // Move user data to PL through DMA
        len = dma_len[id];
        set_buf(kptr, 1 + id);
        gettimeofday(&tpstart,NULL); 
        ret = ioctl(dev_fd, IOCTL_DMA_SET_LEN, &len);
        ret = ioctl(dev_fd, IOCTL_DMA_SET_PS_TO_PL, 0);
        ret = ioctl(dev_fd, IOCTL_DMA_DEMO_START, 0);
        if(ret < 0){
            printf("Failed to start the dma demo. \n");
            return 0;
        }

        //printf("PS to PL: Waiting for interruption. \n");
        ret = ioctl(dev_fd, IOCTL_WAITFOR_IRQ, 0);
        gettimeofday(&tpend, NULL); 
        timeuse = 1000.0*(tpend.tv_sec-tpstart.tv_sec) + (tpend.tv_usec-tpstart.tv_usec)/1000.0; 
        printf("DMA %d bytes from PS to PL takes %f ms.\n", len, timeuse);
        if(ret < 0){
            perror("ioctl: wait for dma demo done failed");
        }
        else{
            printf("dma demo works fine!\n");
        }

        // Reset user buffer
        set_buf(kptr, 0);

        // DMA from PL to PS
        gettimeofday(&tpstart,NULL); 
        ret = ioctl(dev_fd, IOCTL_DMA_SET_PL_TO_PS, 0);
        ret = ioctl(dev_fd, IOCTL_DMA_DEMO_START, 0);
        if(ret < 0){
            printf("Failed to start the dma demo. \n");
            return 0;
        }

        //printf("PL to PS: Waiting for interruption. \n");
        ret = ioctl(dev_fd, IOCTL_WAITFOR_IRQ, 0);
        gettimeofday(&tpend, NULL); 
        timeuse = 1000.0*(tpend.tv_sec-tpstart.tv_sec) + (tpend.tv_usec-tpstart.tv_usec)/1000.0; 
        printf("DMA %d bytes from PL to PS takes %f ms.\n", len, timeuse);

        if(ret < 0){
            perror("ioctl: wait for dma demo done failed");
        }
        else{
            printf("dma demo works fine!\n");
        }

        printf("\ndma buffer: \n\r");
        for(i = 0; i < 20; i++){
            printf("user space: kptr[%d] = %d \n\r", i, kptr[i]);
        }

        id++;
    }

   
    printf("End of the verification.\n");
	return 0;

}

