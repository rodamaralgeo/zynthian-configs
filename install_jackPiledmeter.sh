cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone https://github.com/RagnarJensen/jackPiledmeter.git
autoreconf -i
./configure
make
make install
