#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <sys/mman.h>

#define IOCTL_BASE			    (0xf7)
#define IOCTL_GET_PHY_ADDR		_IO(IOCTL_BASE, 0)
#define NUM 1024 

int main(int argc, char *argv[]){
	int cma_fd;
	long int ret;
    int i;
    unsigned int ret1;

	cma_fd = open("/dev/cma_test", O_RDWR);
	if(cma_fd < 0){
		perror("open /dev/cma_test failed");
		exit(-1);
	}
    printf("Device is opened. \n");

    ret = ioctl(cma_fd, IOCTL_GET_PHY_ADDR, 0);
    if(ret < 0){
        printf("Failed to get the allocated buffer physical address. \n");
        return 0;
    }

    unsigned long phys = ret;
    printf("The physical address of the allocated buffer is %lu. \n", phys);

    //Get the data through memory copy
    char *buf = (char*)malloc(sizeof(char)*NUM);
    for(i = 0; i < NUM; i++){
        buf[i] = i%256;
    }
    //ret1 = write(cma_fd, buf, NUM);

    //ret1 = read(cma_fd, buf, NUM);

    // Write to the physical address
    char *kptr;
    kptr = mmap(0, NUM, PROT_READ|PROT_WRITE, MAP_SHARED, cma_fd, 0);
    if (kptr == MAP_FAILED){
        perror("mmap failed. \n\r");
        exit(-1);
    }
    
    for(i = 0; i < 20; i++){
        kptr[i] = i;
        printf("1: kptr[%d] = %d \n\r", i, kptr[i]);
    }

    // Update buf and write new data to memory
    //for(i = 0; i < NUM; i++){
    //    buf[i] = 0;
    //}

    //ret1 = write(cma_fd, buf, NUM);
    ret1 = read(cma_fd, buf, NUM);
    for(i = 0; i < 20; i++){
        printf("2: buf[%d] = %d \n\r", i, buf[i]);
    }

    for(i = 0; i < 20; i++){
        kptr[i] = 0;
        printf("3: kptr[%d] = %d \n\r", i, kptr[i]);
    }

    ret1 = read(cma_fd, buf, NUM);
    for(i = 0; i < 20; i++){
        printf("4: buf[%d] = %d \n\r", i, buf[i]);
    }

	return 0;

}
