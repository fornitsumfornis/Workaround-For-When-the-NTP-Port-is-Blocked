# Workaround For When the NTP Port is Blocked 
Sometimes the NTP port can be blocked (such as at Universities).  This script(s) allows the raspberry pi to still have the correct time without going through the NTP port.  Theoretically, this script should work anywhere in the world pending that https://time.is and https://wikidates.org are not blocked for any reason.

## Distributions Supported
If your distribution has an /etc/rc.local file then it should install correctly.

## Dependencies

This package depends on lynx.  

    sudo apt-get install lynx -y

## Installing

    git clone https://github.com/fornitsumfornis/Workaround-For-When-the-NTP-Port-is-Blocked
    cd Workaround-For-When-the-NTP-Port-is-Blocked
    chmod 755 install.sh
    sudo sh install.sh
