
git clone https://github.com/devcurmudgeon/alo.git

cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone https://github.com/devcurmudgeon/alo.git
cd alo
make 
make install mod DEST_DIR=/zynthian/zynthian-plugins/lv2
make clean
cd ..
