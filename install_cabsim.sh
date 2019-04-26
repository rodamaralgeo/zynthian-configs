
cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone https://github.com/JWBverheesen/cabinet-simulator.git
cd cabinet-simulator/cabsim
make mod
make install mod INSTALL_DIR=/zynthian/zynthian-plugins/lv2
make clean
cd ..
