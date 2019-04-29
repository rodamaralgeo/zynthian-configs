# install Zam Audio PLUGINS
cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone https://github.com/zamaudio/zam-plugins.git
cd zam-plugins
pkg-config libx11-dev libgl-dev liblo-dev libjack-dev ladspa-sdk
sed -i -- 's,PREFIX ?= /usr/local, PREFIX ?= /zynthian,g' Makefile
sed -i -- 's,LIBDIR ?= lib,LIBDIR ?= zynthian-plugins,g' Makefile
sed -i -- 's,-mtune=generic -msse -msse2,,g' Makefile.mk
git submodule init
git submodule update
sed -i -- 's,-mtune=generic -msse -msse2,,g' dpf/Makefile.base.mk
sed -i -- 's,-mfpmath=sse,,g' dpf/Makefile.base.mk
make
make install
