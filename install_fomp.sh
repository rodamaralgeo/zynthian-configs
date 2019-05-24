# install_mod-tap.sh
cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone http://git.drobilla.net/fomp.lv2.git
cd 
./waf configure
./waf build
./waf install 
mv /usr/local/lib/lv2/fomp.lv2 /zynthian/zynthian-plugins/lv2/fomp.lv2 
