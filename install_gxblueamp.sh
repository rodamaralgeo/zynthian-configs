cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone https://github.com/brummer10/GxBlueAmp.lv2.git
cd GxBlueAmp.lv2
make mod
make install INSTALL_DIR=/zynthian/zynthian-plugins/lv2
make clean
cd ..
