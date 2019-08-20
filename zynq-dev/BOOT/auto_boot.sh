#!/bin/bash

PRJ_NAME=dma_demo
BITSTREAM_FILE=base_sys_wrapper.bit
FSBL_FILE=zynq_fsbl.elf
VIVADO_PRJ_PATH=/home/liucheng/projects/prj2016/$PRJ_NAME/$PRJ_NAME.sdk

BITSTREAM_PATH=$VIVADO_PRJ_PATH/base_sys_wrapper_hw_platform_0/
DEVICETREE_PATH=$VIVADO_PRJ_PATH/device_tree_bsp_0/
FSBL_PATH=$VIVADO_PRJ_PATH/zynq_fsbl/Debug/
BOOT_PATH=/software/BOOT

# Generate device tree
cd $DEVICETREE_PATH
dtc -I dts -O dtb -o devicetree.dtb system.dts
cp -f devicetree.dtb /software/BOOT/

#Generate BOOT.BIN
cp -f $BITSTREAM_PATH/$BITSTREAM_FILE /software/BOOT/pl.bit
cp -f $FSBL_PATH/$FSBL_FILE /software/BOOT/zynq_fsbl.elf

cd $BOOT_PATH
if [ -f BOOT.BIN ]; then
    rm BOOT.BIN
fi

bootgen -image boot.bif -o i BOOT.BIN
