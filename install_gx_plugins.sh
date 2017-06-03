
cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone https://github.com/brummer10/GxPlugins.lv2.git
cd GxPlugins.lv2
apt-get install -y libc6-dev libgtk2.0-dev lv2-dev
git submodule init
git submodule update
make mod
make install INSTALL_DIR=/zynthian/zynthian-plugins/lv2
make clean
cd ..
