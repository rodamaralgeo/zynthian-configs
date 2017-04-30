# guitarix
apt-get install -y libglibmm-2.4-dev libeigen3-dev libzita-convolver-dev libzita-resampler-dev libglibmm-2.4-dev
cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone http://git.code.sf.net/p/guitarix/git guitarix
cd guitarix/trunk
./waf configure --lv2-only --lv2dir=$ZYNTHIAN_PLUGINS_DIR/lv2 --no-avahi --no-bluez --no-ladspa --no-new-ladspa --shared-lib --optimization --download --no-lv2-gui --no-faust
./waf build
sudo ./waf install
./waf clean
	cd ../..
