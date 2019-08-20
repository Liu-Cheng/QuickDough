#!/bin/bash

ROOTFS_PATH=/software/ramdisk
cpio_gz=rootfs.cpio.gz
cpio=rootfs.cpio
new_cpio_gz=newrootfs.cpio.gz
initramfs=initramfs.uImage
UBOOT_PATH=/software/u-boot-xlnx

cd $ROOTFS_PATH
#Create tmp/tmpnew or clean tmp/tmpnew
if [ -d /software/ramdisk/tmp ]; then
    sudo rm -rf ./tmp/*
else
    mkdir tmp
fi

if [ -d /software/ramdisk/tmpnew ]; then
    sudo rm -rf ./tmpnew/*
else
    mkdir tmpnew
fi

cd $ROOTFS_PATH
cp $cpio_gz ./tmp
cd tmp
gunzip $cpio_gz
sudo cpio -idmv < rootfs.cpio
rm rootfs.cpio

cd $ROOTFS_PATH
sudo cp -rf tmp/* tmpnew/
sh -c 'cd tmpnew / && find . | cpio -H newc -o' | gzip -9 > $new_cpio_gz
mkimage -n 'Ramdisk Image' -A arm -O linux -T ramdisk -C gzip -d $new_cpio_gz $initramfs
cd $ROOTFS_PATH
cp -f $initramfs /software/BOOT/

#update u-boot configuration
sed -i '/ramdisk_image=/ c\    "ramdisk_image=initramfs.uImage\\0" \\' $UBOOT_PATH/include/configs/zynq-common.h

