
cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone https://github.com/antanasbruzas/abGate.git
cd abGate
apt-get install gtkmm-2.4
make
make install INSTALL_DIR=/zynthian/zynthian-plugins/lv2
make clean
cd ..
