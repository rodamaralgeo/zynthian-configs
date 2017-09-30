cd $ZYNTHIAN_PLUGINS_SRC_DIR 
git clone https://github.com/x42/convoLV2
cd convoLV2
sed -i -- 's/-msse -msse2 -mfpmath=sse//' Makefile
sed -i -- 's/LV2DIR ?= \$(PREFIX)\/lib\/lv2/LV2DIR ?= \/zynthian\/zynthian-plugins\/lv2/' Makefile
make -j 4
sudo make install INSTDIR=/zynthian/zynthian-plugins/ir.lv2
make clean
cd ..
