apt-get install avahi-daemon
sudo insserv avahi-daemon
echo "<?xml version="1.0" standalone='no'?>
<!DOCTYPE service-group SYSTEM "avahi-service.dtd">
<service-group>
        <name replace-wildcards="yes">%h</name>
        <service>
                <type>_device-info._tcp</type>
                <port>0</port>
                <txt-record>model=local</txt-record>
        </service>
        <service>
                <type>_ssh._tcp</type>
                <port>22</port>
        </service>
</service-group>" >> /etc/avahi/services/multiple.service
/etc/init.d/avahi-daemon restart
