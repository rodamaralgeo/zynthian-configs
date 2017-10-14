cd $ZYNTHIAN_PLUGINS_SRC_DIR 
git clone https://github.com/Anchakor/ir.lv2.git
cd ir.lv2
make -j 4
sudo make install INSTDIR=/zynthian/zynthian-plugins/lv2/ir.lv2
make clean
cd ..
