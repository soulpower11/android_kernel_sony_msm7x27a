#!/bin/sh

CURRENT_DIR=${PWD}/arch/arm/boot

python $CURRENT_DIR/mkelf.py -o $CURRENT_DIR/tap.img $CURRENT_DIR/zImage@0x00208000 $CURRENT_DIR/boot.elf.ramdisk.gz@0x01400000,ramdisk $CURRENT_DIR/boot.elf.bootcmd@cmdline

fastboot flash boot $CURRENT_DIR/tap.img

fastboot reboot
