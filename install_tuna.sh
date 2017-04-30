cd $ZYNTHIAN_PLUGINS_SRC_DIR
rm -r tuna.lv2 #if exist
git clone https://github.com/x42/tuna.lv2.git
cd tuna.lv2
sed -i -- 's,PREFIX ?= /usr/local,PREFIX ?= ${ZYNTHIAN_PLUGINS_DIR},g' Makefifle
sed -i -- 's,LV2DIR ?= $(PREFIX)/lib/lv2,LV2DIR ?= $(PREFIX)/lv2,g' Makefile 
sed -i -- 's,-msse -msse2 -mfpmath=sse,,g' Makefile 
make submodules
make MOD=1
sudo make install MOD=1
