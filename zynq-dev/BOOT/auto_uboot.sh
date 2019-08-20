#!/bin/bash

UBOOT_PATH=/software/u-boot-xlnx
cd $UBOOT_PATH
make distclean
make ARCH=arm zynq_zed_config
echo "u-boot compilation starts..."
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- 
echo "u-boot compilation is done."
cp -f $UBOOT_PATH/u-boot /software/BOOT/u-boot.elf
