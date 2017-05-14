cd $ZYNTHIAN_PLUGINS_SRC_DIR
https://github.com/ninodewit/SHIRO-Plugins.git
cd
SHIRO-Plugins
sed -i -- 's,$(DESTDIR)$(PREFIX)/lib/,/zynthian/zynthian-plugins/,g' Makefile
git submodule init
git submodule update
make
make install

