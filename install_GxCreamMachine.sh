cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone https://github.com/brummer10/GxCreamMachine.lv2.git
cd GxCreamMachine.lv2
make mod
make install mod INSTALL_DIR=/zynthian/zynthian-plugins/lv2
make clean
cd ..
