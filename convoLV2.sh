cd $ZYNTHIAN_PLUGINS_SRC_DIR 
git clone https://github.com/x42/convoLV2
cd convoLV2

sed -i -- 's,PREFIX ?= /usr/local,PREFIX ?= /zynthian,g' Makefile
sed -i -- 's,LIBDIR ?= lib,LIBDIR ?= zynthian-plugins,g' Makefile

cd /usr/local/lib/lv2
sed -i -- 's/-msse -msse2 -mfpmath=sse//' Makefile
sed -i -- 's/LV2DIR ?= \$(PREFIX)\/lib\/lv2/LV2DIR ?= \/zynthian\/zynthian-plugins\/lv2/' Makefile
make submodules
make -j 4 MOD=1
sudo make MOD=1 install
make clean
cd ..


INSTDIR=/zynthian/zynthian-plugins/ir.lv2
