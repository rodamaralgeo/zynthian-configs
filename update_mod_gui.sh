cd $ZYNTHIAN_DIR
git clone https://github.com/rodamaralgeo/mod-lv2-data.git
cd mod-lv2-data
git pull
# RakarRack
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins-fixed/rkr.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/rkr.lv2
# Fomp Update
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins-fixed/fomp.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/fomp.lv2
# Guitarix Updade
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins-fixed/gx_gcb_95.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/gx_gcb_95.lv2
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins/gxmetal_amp.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/gxmetal_amp.lv2
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins/gxmetal_head.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/gxmetal_head.lv2
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins-fixed/gx_mole.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/gx_mole.lv2
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins-fixed/gx_muff.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/gx_muff.lv2
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins-fixed/gxts9.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/gxts9.lv2
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins/gx_colwah.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/gx_colwah.lv2
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins/gx_zita_rev1.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/gx_zita_rev1.lv2
#Zam Audio Plugins
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins-fixed/ZaMaximX2.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/ZaMaximX2.lv2
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins-fixed/ZaMultiComp.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/ZaMultiComp.lv2
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins-fixed/ZaMultiCompX2.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/ZaMultiCompX2.lv2
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins-fixed/ZamAutoSat.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/ZamAutoSat.lv2
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins-fixed/ZamComp.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/ZamComp.lv2
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins-fixed/ZamCompX2.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/ZamCompX2.lv2
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins-fixed/ZamDelay.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/ZamDelay.lv2
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins-fixed/ZamEQ2.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/ZamEQ2.lv2
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins-fixed/ZamGEQ31.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/ZamGEQ31.lv2
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins-fixed/ZamGate.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/ZamGate.lv2
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins-fixed/ZamGateX2.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/ZamGateX2.lv2
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins-fixed/ZamHeadX2.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/ZamHeadX2.lv2
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins-fixed/ZamTube.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/ZamTube.lv2

# cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins/tape_delay-swh.lv2/* $ZYNTHIAN_DIR/zynthian-plugins/lv2/tape_delay-swh.lv2
cp -R $ZYNTHIAN_DIR/mod-lv2-data/plugins-fixed/invada.lv2/* /usr/lib/lv2/invada.lv2
