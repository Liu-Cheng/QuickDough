#!/bin/bash

KERNEL_PATH=/software/linux-xlnx
cd $KERNEL_PATH
make distclean
make ARCH=arm xilinx_zynq_defconfig
sed -i '/CONFIG_BLK_DEV_RAM_COUNT/ c\CONFIG_BLK_DEV_RAM_COUNT=8' ./.config
sed -i '/CONFIG_BLK_DEV_RAM_SIZE/ c\CONFIG_BLK_DEV_RAM_SIZE=32768' ./.config
echo "Kernel configuration is done."
echo "Kernel compilation starts ..."
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- UIMAGE_LOADADDR=0x8000 uImage
echo "Kernel compilation is done."
cp -f $KERNEL_PATH/arch/arm/boot/uImage /software/BOOT/
