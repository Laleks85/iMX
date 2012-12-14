#!/bin/sh

# create the mounting points
mkdir emmc
mkdir usb

# mount the USB and EMMC
mount /dev/mmcblk0p1 emmc  #mount the emmc
mount /dev/sda1 usb        #mount the usb

# Do the copy, blocks size are 1M, and 1000 of them are copied.
dd if=usb/sample.bin \
   of=emmc/sample.bin \
   bs=1M count=1000
