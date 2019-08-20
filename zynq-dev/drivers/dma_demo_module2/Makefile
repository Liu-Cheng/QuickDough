# 
# Makefile template for out of tree kernel modules
#

ARM_LINUX_KERNEL:=/software/linux-xlnx

CURRENT_PATH=$(shell pwd)
obj-m += dma_demo.o

all:
	$(MAKE) -C $(ARM_LINUX_KERNEL) M=$(CURRENT_PATH) modules

clean:
	rm -rf .*.cmd *.o *.mod.c *.ko .tmp_versions Module.symvers .Makefile.swp modules.order

