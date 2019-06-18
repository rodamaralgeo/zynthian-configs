cd $ZYNTHIAN_PLUGINS_SRC_DIR 
git clone git://gareus.org/zeroconvo.lv2
cd zeroconvo.lv2
sed -i -- 's/-msse -msse2 -mfpmath=sse//' Makefile
sed -i -- 's/LV2DIR ?= \$(PREFIX)\/lib\/lv2/LV2DIR ?= \/zynthian\/zynthian-plugins\/lv2/' Makefile


wget https://x42-plugins.com/tmp/sisel4-ir.tar.xz
tar xf sisel4-ir.tar.xz
cat sisel4-ir.lv2/manifest.ttl | tail -n +7 >> build/manifest.ttl
cat sisel4-ir.lv2/presets.ttl | tail -n +10 >> build/presets.ttl
make 
make install
make clean
cd ..
