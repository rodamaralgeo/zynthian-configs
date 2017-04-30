# rkrlv2
cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone https://github.com/ssj71/rkrlv2.git
cd rkrlv2
sed -i -- 's,-msse -msse2 -mfpmath=sse,,g' lv2/CMakeLists.txt
sed -i -- 's,LV2_INSTALL_DIR lib/lv2/rkr.lv2,LV2_INSTALL_DIR ${ZYNTHIAN_PLUGINS_DIR}/lv2/rkr.lv2,g' lv2/CMakeLists.txt
mkdir build
cd build
cmake ..
make MOD=1
make install MOD=1
make clean
cd ../..
