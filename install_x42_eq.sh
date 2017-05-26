cd $ZYNTHIAN_PLUGINS_SRC_DIR 
git clone git://github.com/x42/fil4.lv2.git
cd fil4.lv2
sed -i -- 's/-msse -msse2 -mfpmath=sse//' Makefile
sed -i -- 's/LV2DIR ?= \$(PREFIX)\/lib\/lv2/LV2DIR ?= \/zynthian\/zynthian-plugins\/lv2/' Makefile
make submodules
make -j 4 MOD=1
sudo make MOD=1 install
make clean
cd ..
