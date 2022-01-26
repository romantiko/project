#!/bin/sh
fw_setenv TR069_INFO "MODEL=P28OPEN;OUI=010203;tr069_enable=0;inform_enable=0;acs_url=http://localhost:9091"
fw_setenv FOTA_INFO "FOTA_ENABLE=0;fota_upgrade_url=http://localhost;fota_register_url=http://localhost"
sed -i 's/\(^.*start_instance\)\(.*tr069\)/#\1\2/' /etc/init.d/services.init
sed -i 's/\(^.*start_instance\)\(.*ota\)/#\1\2/' /etc/init.d/services.init
sed -i 's/\(.*add_auto_fota\)/#\1\2/' /etc/init.d/services.init
sed -i 's/\(^.*fota_upgrade\)(.*$)//' /etc/crontabs/root

sleep 3