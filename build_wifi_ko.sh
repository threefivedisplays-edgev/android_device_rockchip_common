#!/bin/bash
TARGET_ARCH=$1
TARGET_OUT=$2
echo "---- make wifi ko  ----"
echo "TARGET_ARCH = $TARGET_ARCH"

#make -C kernel ARCH=$TARGET_ARCH  modules -j8

mkdir -p $TARGET_OUT/lib/modules

find kernel/drivers/net/wireless/rockchip_wlan/*  -name "*.ko" | \
xargs -n1 -i cp {} $TARGET_OUT/lib/modules/
echo "Install wifi ko to $TARGET_OUT/lib/modules/"
