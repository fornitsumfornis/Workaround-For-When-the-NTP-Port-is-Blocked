# Workaround For When the NTP Port is Blocked 
Sometimes the NTP port can be blocked (such as at Universities).  This script(s) allows the raspberry pi to still have the correct time without going through the NTP port.  

## Distributions Supported
If your distribution has an /etc/rc.local file then it should work

## Dependencies

This package depends on lynx.  

    sudo apt-get install lynx -y

## Installing

    git clone https://github.com/fornitsumfornis/Workaround-For-When-the-NTP-Port-is-Blocked
    cd Workaround-For-When-the-NTP-Port-is-Blocked
    chmod 755 install.sh
    sudo sh install.sh
