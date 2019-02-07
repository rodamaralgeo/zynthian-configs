cd $ZYNTHIAN_PLUGINS_SRC_DIR
git clone https://github.com/dsacre/mididings.git
cd mididings
sudo apt-get install -y libglib2.0-dev
sudo apt-get install -y libboost-all-dev
pip install decorator
./setup.py build 
./setup.py install
