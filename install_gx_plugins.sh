
cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone https://github.com/brummer10/GxPlugins.lv2.git
cd GxPlugins.lv2
apt-get install libc6-dev
apt-get install libgtk2.0-dev
apt-get install lv2-dev
git submodule init
git submodule update
make mod=1
make install mod=1 INSTALL_DIR=/zynthian/zynthian-plugins/lv2
