cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone https://github.com/x42/tinyamp.lv2.git
cd tinyamp.lv2
sed -i -- 's,PREFIX ?= /usr/local,PREFIX ?= /zynthian/zynthian-plugins,g' Makefile
sed -i -- 's,LV2DIR ?= $(PREFIX)/lib/lv2,LV2DIR ?= $(PREFIX)/lv2,g' Makefile 
sed -i -- 's,-msse -msse2 -mfpmath=sse,,g' Makefile 
make MOD=1
make install MOD=1
