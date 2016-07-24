/*
* ioctl.c - the process to use ioctl's to control the kernel module
*
* Until now we could have used cat for input and output. But now
* we need to do ioctl's, which require writing our own process.
*/
/*
* device specifics, such as ioctl numbers and the
* major device file.
*/
#include "usr_acc.h"
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h> /* open */
#include <unistd.h> /* exit */
#include <sys/ioctl.h> /* ioctl */
/*
* Functions for the ioctl calls
*/
void ioctl_acc_start(int file_desc){
	int ret_val;
	ret_val = ioctl(file_desc, IOCTL_ACC_START, NULL);
	if (ret_val < 0){
		printf("user accelerator failed to start:%d\n", ret_val);
		exit(-1);
	}
}

/*
* Main - Call the ioctl functions
*/
int main(){
	int Choice;
	int exitflag = 1;
	int file_desc;

	printf("################################ \n\r");
	printf(" User accelerator example!  \n\r");
	printf("################################ \n\r");
	file_desc = open(DEVICE_FILE_NAME, O_RDWR | O_SYNC);
	if (file_desc < 0){
		printf("Can't open device file: %s\n", DEVICE_FILE_NAME);
		exit(-1);
	}
	while (exitflag){
		printf("************************************************ \n\r");
		printf("Press '1' to Start user accelerator. \n\r");
		printf("Press '0' to exit test. \n\r");
		printf("************************************************ \n\r");
		scanf("%d",&Choice);
		printf("Choice  :: %d \n\r",Choice);
		if(Choice == 1){
			ioctl_acc_start(file_desc);
			exitflag = 1;
		}
		else if (0 == Choice){
			exitflag = 0;
		}
	}

	close(file_desc);
	printf("################################ \n\r");
	printf(" Bye User Accelerator Application! \n\r");
	printf("################################ \n\r");
	return 0;
}

