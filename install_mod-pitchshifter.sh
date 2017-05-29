# install_mod-pitchshifter.sh
cd $ZYNTHIAN_PLUGINS_SRC_DIR
rm -r mod-pitchshifter
git clone https://github.com/moddevices/mod-pitchshifter.git
cd mod-pitchshifter
sed -i -- 's,-mtune=generic -msse -msse2 -mfpmath=sse,,g' Makefile.mk
sed -i -- 's,INSTALL_PATH = /usr/local/lib/lv2,INSTALL_PATH = /zynthian/zynthian-plugins/lv2,g' Makefile.mk
sed -i -- 's,INSTALLATION_PATH = $(DESTDIR)$(INSTALL_PATH)/$(EFFECT_PATH),INSTALLATION_PATH = /zynthian/zynthian-plugins/lv2/$(EFFECT_PATH),g' Makefile.mk
make -j 4 NOOPT=true
sudo make install INSTALL_PATH=$ZYNTHIAN_PLUGINS_DIR/lv2
make clean
cd ..
