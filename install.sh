#!/bin/sh

sudo mv synchronize.sh /usr/local/sbin
sudo sed '$isleep 30' /etc/rc.local
sudo sed '$ibash /usr/local/sbin/synchronize.sh' /etc/rc.local

exit 0
