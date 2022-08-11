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
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default

##############################################################################################
#删除插件
rm -rf package/li
rm -rf feeds/kenzo/luci-app-adguardhome
rm -rf feeds/kenzo/adguardhome
rm -rf feeds/kenzo/luci-app-godproxy
rm -rf feeds/kenzo/luci-app-ikoolproxy
rm -rf feeds/kenzo/luci-app-tencentddns
rm -rf feeds/kenzo/diy/.packages/luci-app-adguardhome
rm -rf feeds/kenzo/diy/.packages/adguardhome
rm -rf feeds/kenzo/luci-theme-neobird
rm -rf feeds/kenzo/luci-theme-edge
rm -rf feeds/luci/applications/luci-app-v2ray-server
rm -rf feeds/luci/applications/luci-app-socat
rm -rf feeds/kenzo/luci-app-upnp
rm -rf feeds/luci/applications/luci-app-aliyundrive-fuse
rm -rf feeds/luci/applications/luci-app-aliyundrive-webdav
rm -rf feeds/luci/applications/luci-app-amule
rm -rf feeds/luci/applications/luci-app-diskman
rm -rf feeds/kenzo/luci-app-openvpn-server
rm -rf feeds/kenzo/luci-app-softethervpn
rm -rf feeds/luci/applications/luci-app-baidupcs-web
rm -rf feeds/kenzo/luci-app-wrtbwmon
rm -rf feeds/kenzo/luci-app-xlnetacc
rm -rf feeds/kenzo/luci-app-tencentddns
rm -rf feeds/kenzo/luci-app-jd-dailybonus
rm -rf feeds/luci/applications/luci-app-v2ray-server
rm -rf feeds/luci/themes/luci-theme-argon
rm -rf feeds/kenzo/luci-theme-argon
rm -rf package/lean/luci-theme-argon
rm -rf package/lean/luci-theme-edge
rm -rf package/lean/luci-theme-neobird
rm -rf package/lean/luci-theme-opentopd

# 主题
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon 
git clone -b 18.06 https://github.com/kiddin9/luci-theme-edge.git package/lean/luci-theme-edge
git clone https://github.com/thinktip/luci-theme-neobird.git package/lean/luci-theme-neobird
git clone https://github.com/sirpdboy/luci-theme-opentopd.git package/lean/luci-theme-opentopd

##############################################################################################
#添加插件
git clone https://github.com/bootli/luci-app-v2ray-server.git feeds/luci/applications/luci-app-v2ray-server
mkdir package/li
git clone https://github.com/bootli/luci-app-ikoolproxy.git package/li/luci-app-ikoolproxy
git clone https://github.com/bootli/luci-app-tencentddns.git package/li/luci-app-tencentddns
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/li/luci-app-adguardhome
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/li/luci-app-jd-dailybonus
git clone https://github.com/jerrykuku/luci-app-ttnode.git package/li/luci-app-ttnode
git clone https://github.com/messense/aliyundrive-fuse.git package/li/aliyundrive-fuse
git clone https://github.com/bootli/luci-app-beardropper.git package/li/luci-app-beardropper
git clone https://github.com/sirpdboy/netspeedtest.git package/li/netspeedtest
git clone https://github.com/destan19/OpenAppFilter.git package/li/OpenAppFilter
git clone https://github.com/bootli/luci-app-amule.git package/li/luci-app-amule
git clone https://github.com/bootli/luci-app-baidupcs-web.git package/li/luci-app-baidupcs-web
git clone https://github.com/bootli/luci-app-socat.git package/li/luci-app-socat
git clone https://github.com/bootli/luci-app-linkease.git  package/li/luci-app-linkease


# 状态

# 实时监控 lede包已有

#释放内存 lede包已有

##############################################################################################

#  系统

#定时重启
#git clone https://github.com/f8q8/luci-app-autoreboot.git package/luci-app-autoreboot

#ttyd lede包已有

#磁盘管理
#git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman

#文件传输 lede包已有

#  关机
#git clone https://github.com/esirplayground/luci-app-poweroff.git package/luci-app-poweroff

##############################################################################################

# 服务

#docker
#git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman

#ShadowSocksR Plus+
#git clone https://github.com/fw876/helloworld.git package/helloworld

#passwall
#git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
#git clone -b luci https://github.com/xiaorouji/openwrt-passwall.git package/luci-app-passwall

#passwall2
#git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
#git clone https://github.com/xiaorouji/openwrt-passwall2.git package/openwrt-passwall2

#helloword
#git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
#git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
#git clone https://github.com/fw876/helloworld.git package/helloworld

#openclash
#git clone https://github.com/vernesong/OpenClash.git package/OpenClash

#luci-app-adguardhome
#git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome

##############################################################################################

# NAS

#文件助手
#svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-fileassistant package/luci-app-fileassistant

##############################################################################################

# 网络

#Turbo ACC 加速 lede包已有

##############################################################################################
