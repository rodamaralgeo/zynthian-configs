  
cd $ZYNTHIAN_PLUGINS_SRC_DIR
rm -rf mod-cabsim-IR-loader
git clone https://github.com/moddevices/mod-cabsim-IR-loader.git
cd mod-cabsim-IR-loader/source
make
make install
