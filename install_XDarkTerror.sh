  
cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone https://github.com/brummer10/XDarkTerror.lv2.git
cd XDarkTerror.lv2
git submodule init
git submodule update
make
make install  INSTALL_DIR=/zynthian/zynthian-plugins/lv2
make clean
cd ..

cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone https://github.com/brummer10/XTinyTerror.lv2.git
cd XTinyTerror.lv2
git submodule init
git submodule update
make
make install  INSTALL_DIR=/zynthian/zynthian-plugins/lv2
make clean
cd ..
