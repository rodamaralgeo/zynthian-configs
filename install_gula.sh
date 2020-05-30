cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone https://github.com/steveb/gula-plugins.git
cd gula-plugins
make all
cp -R $ZYNTHIAN_PLUGINS_SRC_DIR/gula-plugins/lv2/*.lv2 /zynthian/zynthian-plugins/lv2
make install
make clean
