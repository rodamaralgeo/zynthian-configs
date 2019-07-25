cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone https://github.com/brummer10/GxMatchEQ.lv2.git
cd GxMatchEQ.lv2
make mod
make install INSTALL_DIR=/zynthian/zynthian-plugins/lv2
make clean
cd ..
