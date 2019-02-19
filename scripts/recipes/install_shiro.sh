#!/bin/bash

# install_shiro.sh
cd $ZYNTHIAN_PLUGINS_SRC_DIR
rm -rf SHIRO-Plugins
# git clone https://github.com/ninodewit/SHIRO-Plugins.git
git clone https://github.com/BlokasLabs/SHIRO-Plugins.git
cd SHIRO-Plugins
git submodule init
git submodule update

sed -i -- 's/-march=armv6 //' Makefile.mk

RASPPI=true make all

cp -r bin/*.lv2 /zynthian/zynthian-plugins/lv2/
cd ..
