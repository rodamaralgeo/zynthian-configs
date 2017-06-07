cd $ZYNTHIAN_PLUGINS_SRC_DIR
https://github.com/ninodewit/SHIRO-Plugins.git
cd SHIRO-Plugins
sed -i -- 's,$(DESTDIR)$(PREFIX)/lib/,/zynthian/zynthian-plugins/,g' Makefile
sed -i -- 's,-mtune=generic -msse -msse2,,g' Makefile.mk
sed -i -- 's,-mfpmath=sse,,g' Makefile.mk
git submodule init
git submodule update
sed -i -- 's,-mtune=generic -msse -msse2,,g' Makefile.mk dpf/dgl/Makefile.mk
sed -i -- 's,-mfpmath=sse,,g' Makefile.mk dpf/dgl/Makefile.mk
make
make install
