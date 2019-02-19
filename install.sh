#!/bin/sh

sudo mv synchronize.sh /usr/local/sbin
sudo sed '$isleep 30'
sudo sed '$ibash /usr/local/sbin/synchronize.sh' /etc/rc.local

echo 0
