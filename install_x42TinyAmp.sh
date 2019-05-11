cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone https://github.com/x42/tinyamp.lv2.git
cd tinyamp.lv2
make MOD=1
sudo make MOD=1 LV2DIR=$ZYNTHIAN_PLUGINS_DIR/lv2 install

