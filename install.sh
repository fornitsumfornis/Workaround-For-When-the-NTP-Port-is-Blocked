#!/bin/sh

chmod 755 synchronize.sh
sudo mv synchronize.sh /usr/local/sbin
sudo sed -i '$isleep 30' /etc/rc.local
sudo sed -i '$ibash /usr/local/sbin/synchronize.sh' /etc/rc.local
cd ..
sudo rm -r ~/Downloads/Workaround-For-When-the-NTP-Port-is-Blocked

exit 0
