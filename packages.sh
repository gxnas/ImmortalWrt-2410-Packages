#!/bin/bash

shopt -s extglob
rm -rfv !(LICENSE|README.md|packages.sh)
shopt -u extglob

git clone --depth=1 https://github.com/sirpdboy/luci-app-partexp.git
git clone --depth=1 https://github.com/sirpdboy/luci-app-poweroffdevice.git
git clone --depth=1 https://github.com/tty228/luci-app-wechatpush.git
git clone --depth=1 https://github.com/asvow/luci-app-tailscale.git
git clone --depth=1 -b openwrt-24.10 https://github.com/immortalwrt/luci.git && mv luci/applications/* ./ && rm -rf luci
git clone --depth=1 https://github.com/linkease/istore.git && mv -n istore/luci/luci-app-store ./ && rm -rf istore
git clone --depth=1 https://github.com/danchexiaoyang/luci-app-onliner.git && mv luci-app-onliner danchexiaoyang-onliner && mv -n danchexiaoyang-onliner/luci-app-onliner ./ && rm -rf danchexiaoyang-onliner

rm -rf ./*/.git & rm -rf ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
