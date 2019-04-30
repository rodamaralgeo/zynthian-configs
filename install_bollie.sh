#bollie plugins

cd $ZYNTHIAN_SW_DIR/plugins
git clone https://github.com/MrBollie/bolliedelay.lv2.git
cd bolliedelay.lv2
sed -i -- "s/lib\/lv2//" Makefile
sudo make PREFIX="" DESTDIR="$ZYNTHIAN_PLUGINS_DIR/lv2" install
make clean
cd ..

cd $ZYNTHIAN_SW_DIR/plugins
git clone https://github.com/MrBollie/bolliedelayxt.lv2.git
cd bolliedelayxt.lv2
sed -i -- "s/lib\/lv2//" Makefile
sudo make PREFIX="" DESTDIR="$ZYNTHIAN_PLUGINS_DIR/lv2" install
make clean
cd ..

cd $ZYNTHIAN_SW_DIR/plugins
git clone https://github.com/MrBollie/bolliedelayxt.lv2.git
cd bolliedelayxt.lv2
sed -i -- "s/lib\/lv2//" Makefile
sudo make PREFIX="" DESTDIR="$ZYNTHIAN_PLUGINS_DIR/lv2" install
make clean
cd ..

cd $ZYNTHIAN_SW_DIR/plugins
git clone https://github.com/MrBollie/bollie-echopeck.lv2.git
cd bollie-echopeck.lv2
sed -i -- "s/lib\/lv2//" Makefile
sudo make PREFIX="" DESTDIR="$ZYNTHIAN_PLUGINS_DIR/lv2" install
make clean
cd ..

cd $ZYNTHIAN_SW_DIR/plugins
git clone https://github.com/MrBollie/bollieretain.lv2.git
cd bollieretain.lv2
sed -i -- "s/lib\/lv2//" Makefile
sudo make PREFIX="" DESTDIR="$ZYNTHIAN_PLUGINS_DIR/lv2" install
make clean
cd ..

cd $ZYNTHIAN_SW_DIR/plugins
git clone https://github.com/MrBollie/bolliefader.lv2.git
cd bolliefader.lv2
sed -i -- "s/lib\/lv2//" Makefile
sudo make PREFIX="" DESTDIR="$ZYNTHIAN_PLUGINS_DIR/lv2" install
make clean
cd ..
