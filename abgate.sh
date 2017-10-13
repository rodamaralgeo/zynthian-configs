
cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone https://github.com/antanasbruzas/abGate.git
cd abGate
suod apt-get install -y gtkmm-2.4
sudo apt-get -y install qt4-dev-tools
make
make install INSTALL_DIR=/zynthian/zynthian-plugins/lv2
make clean
cd ..
