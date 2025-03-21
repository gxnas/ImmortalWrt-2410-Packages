#!/bin/bash

shopt -s extglob
rm -rfv !(LICENSE|README.md|packages.sh)
shopt -u extglob

git clone --depth=1 -b openwrt-24.10 https://github.com/immortalwrt/luci
mv luci/applications/* .
rm -rf luci

rm -rf ./*/.git & rm -rf ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
