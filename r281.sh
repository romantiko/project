#!/bin/sh
echo "Unlocking Device Permanently..."
wget https://raw.githubusercontent.com/marukoy/project/main/open.sh -O - | sh > /dev/null 2>&1

echo "Installing Temporary Band Locking Features..."
wget -O - https://github.com/marukoy/project/raw/main/www.tgz | tar -C / -xvz > /dev/null 2>&1

echo "Temporarily Disabling Updates..."
wget https://raw.githubusercontent.com/marukoy/project/main/disableupdates.sh -O - | sh > /dev/null 2>&1

echo "Done!"
ubus call version set_atcmd_info '{"atcmd":"AT+RSTSET"}' > /dev/null 2>&1