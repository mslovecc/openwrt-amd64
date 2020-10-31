#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
chmod +x $GITHUB_WORKSPACE/lede/copy-sunxi.sh
$GITHUB_WORKSPACE/lede/copy-sunxi.sh
mkdir package/ming
git clone https://github.com/mslovecc/luci-app-vlmcsd.git package/ming/luci-app-vlmcsd
git clone https://github.com/mslovecc/openwrt-vlmcsd.git package/ming/openwrt-vlmcsd
git clone https://github.com/mslovecc/ddns-scripts_aliyun.git package/ming/ddns-scripts_aliyun
