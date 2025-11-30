#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# 设置默认IP为 192.168.2.1
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.6.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# 修改内核为5.15.127-1-f12cad7e28a8d370c8c790636360fd31
# sed -i 's/LINUX_VERSION-5.15 = .127/LINUX_VERSION-5.15 = .127-1/g' include/kernel-5.15
# sed -i 's/LINUX_KERNEL_HASH-5.15.127 = add0a575341b263a06e93599fc220a5dd34cb4ca5b9d05097a5db2a061928f26/LINUX_KERNEL_HASH-5.15.127-1 = f12cad7e28a8d370c8c790636360fd31/g' include/kernel-5.15
