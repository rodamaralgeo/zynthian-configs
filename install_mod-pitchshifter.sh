# install_mod-pitchshifter.sh
cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone https://github.com/moddevices/mod-pitchshifter.git
cd mod-pitchshifter
sed -i -- 's,-mtune=generic -msse -msse2 -mfpmath=sse,,g' Makefile.mk
sed -i -- 's,INSTALL_PATH = /usr/local/lib/lv2,INSTALL_PATH = ${ZYNTHIAN_PLUGINS_DIR}/lv2,g' Makefile.mk
make -j 4 NOOPT=true
sudo make install
make clean
cd ..
