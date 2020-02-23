cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone https://github.com/steveb/gula-plugins.git
cd gula-plugins
make all
make install
make clean
