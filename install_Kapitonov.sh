https://github.com/olegkapitonov/Kapitonov-Plugins-Pack.git


cd $ZYNTHIAN_PLUGINS_SRC_DIR
rm -rf $ZYNTHIAN_PLUGINS_SRC_DIR/Kapitonov-Plugins-Pack
git clone --single-branch --branch thirdparty-included https://github.com/olegkapitonov/Kapitonov-Plugins-Pack.git
cd Kapitonov-Plugins-Pack
sed -i -- 's,'gui': true,'gui': false,g' meson.build
sed -i -- 's,'ladspa': true,'ladspa': false,g' meson.build
meson build --reconfigure -Dlv2dir=/zynthian/zynthian-plugins/lv2 --prefix $HOME and then ninja -C build install.
make mod
make install mod INSTALL_DIR=/zynthian/zynthian-plugins/lv2
make clean
cd ..


git clone https://github.com/rodamaralgeo/plugins-bin.git
cd plugins-bin
cp -r *.lv2 /zynthian/zynthian-plugins/lv2
