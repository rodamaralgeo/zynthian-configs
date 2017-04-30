#Configure Zynthian
#Run this script AFTER update your zynthian.

#Change fb1 to fb0
cd /etc/systemd/system/
sed -i 's,fb1,fb0,g' zynthian.service

cd /zynthian/zynthian-sys/sbin
sed -i 's,fb1,fb0,g' splash-screen.sh

cd /zynthian/zynthian-sys/scripts
sed -i 's,fb1,fb0,g' zynthian_envars.sh

cd /zynthian/zynthian-sys/etc/systemd
sed -i 's,fb1,fb0,g' zynthian.service

#Change /boot/config.txt file
cd /boot
sed -i 's,dtoverlay=hifiberry-dacplus,#dtoverlay=hifiberry-dacplus,g' config.txt
sed -i 's,#dtoverlay=audioinjector-wm8731-audio,dtoverlay=audioinjector-wm8731-audio,g' config.txt
sed -i 's,dtoverlay=pitft28-resistive,#dtoverlay=pitft28-resistive,g' config.txt
echo "framebuffer_width=1024" >> /boot/config.txt
echo "framebuffer_height=600" >> /boot/config.txt
echo "max_usb_current=1" >> /boot/config.txt
echo "hdmi_goup=2" >> /boot/config.txt
echo "hdmi_mode=1" >> /boot/config.txt
echo "hdmi_mode=87" >> /boot/config.txt
echo "hdmi_cvt 1024 600 60 6 0 0 0" >> /boot/config.txt

#Change X11 Configs
cd /etc/X11/xorg.conf.d/
rm 99-calibration.conf
sed -i 's,fb1,fb0,g' 99-pitft.conf
sed -i 's,Adafruit PiTFT,HDMI,g' 99-pitft.conf

#Change Zynthian UI Configs
cd /zynthian/zynthian-ui
sed -i 's/width=320/width=1024/g' zynthian_gui_config.py
sed -i 's/height=240/height=600/g' zynthian_gui_config.py
sed -i 's/topbar_height=24/topbar_height=80/g' zynthian_gui_config.py
sed -i 's/font_family="Audiowide"/font_family="Helvetica"/g' zynthian_gui_config.py
sed -i 's/font_topbar=(font_family,11)/font_topbar=(font_family,36)/g' zynthian_gui_config.py
sed -i 's/font_listbox=(font_family,10)/font_listbox=(font_family,32)/g' zynthian_gui_config.py
sed -i 's/font_ctrl_title_maxsize=11/font_ctrl_title_maxsize=36/g' zynthian_gui_config.py

reboot
