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

# Modify default IP
sed -i 's/192.168.1.1/192.168.50.254/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/Melt-OpenWrt/g' package/base-files/files/bin/config_generate
sed -i 's/root:::0:99999:7:::/root:$1$m9enpRnu$TjbaRy7zgCDF.hXF6md7p1:20077:0:99999:7:::/g' package/base-files/files/etc/shadow
# sed -i 's/def_bool y/def_bool n/g' config/Config-build.in
#cd openwrt
#mkdir package/themes
#git clone https://github.com/jerrykuku/luci-theme-argon.git package/themes/luci-theme-argon
#rm -rf feeds/packages/lang/golang
#git clone https://github.com/kenzok8/golang feeds/packages/lang/golang
