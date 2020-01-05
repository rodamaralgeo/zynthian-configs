cd $ZYNTHIAN_PLUGINS_SRC_DIR 
rm -rf zeroconvo.lv2
git clone https://github.com/x42/zconvo.lv2
cd zeroconvo.lv2
sed -i -- 's/-msse -msse2 -mfpmath=sse//' Makefile
sed -i -- 's/LV2DIR ?= \$(PREFIX)\/lib\/lv2/LV2DIR ?= \/zynthian\/zynthian-plugins\/lv2/' Makefile

make 
make install
make clean
cd ..
