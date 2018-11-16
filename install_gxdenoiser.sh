cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone https://github.com/brummer10/GxDenoiser2.lv2.git
cd GxDenoiser2.lv2
make 
make install mod INSTALL_DIR=/zynthian/zynthian-plugins/lv2
make clean
cd ..
