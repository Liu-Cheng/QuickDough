#!/bin/bash

UBOOT_PATH=/software/u-boot-xlnx/
ROOTFS_PATH=/software/ramdisk

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


old_ramdisk_gz=arm_ramdisk.image.gz
old_ramdisk=arm_ramdisk.image
new_ramdisk_gz=ramdisk.image.gz
new_ramdisk=ramdisk.image
out_uramdisk=uramdisk.image.gz

if [ -f $old_ramdisk_gz ]; then
    gunzip $old_ramdisk_gz
fi

sudo mount -o loop  $old_ramdisk tmp
dd if=/dev/zero of=$new_ramdisk bs=1024 count=32768
mke2fs -F $new_ramdisk -L "ramdisk" -b 1024 -m 0
tune2fs $new_ramdisk -i 0
chmod a+rwx $new_ramdisk

sudo mount -o loop $new_ramdisk tmpnew
sudo cp -R tmp/* tmpnew/ 

sudo umount tmp
sudo umount tmpnew

if [ -f $new_ramdisk_gz ]; then
    rm $new_ramdisk_gz
fi
gzip $new_ramdisk 
mkimage -A arm -T ramdisk -C gzip -d $new_ramdisk_gz $out_uramdisk

cp -f $out_uramdisk /software/BOOT/

#update u-boot-xlinx/include/configs/zynq-common.h
sed -i '/ramdisk_image=/ c\    "ramdisk_image=uramdisk.image.gz\\0" \\' $UBOOT_PATH/include/configs/zynq-common.h

