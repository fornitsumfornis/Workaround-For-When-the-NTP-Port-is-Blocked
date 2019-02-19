# Workaround For When the NTP Port is Blocked 
Sometimes the NTP port can be blocked (such as at Universities).  This script(s) allows the raspberry pi to still have the correct time without going through the NTP port.  

## ARM Distributions Supported
### Raspbian
It could work on other distributions as well including other non-ARM distribultions.

## Dependencies

This package depends on lynx.  

    sudo apt-get install lynx -y

## Installing

    git clone https://github.com/fornitsumfornis/Workaround-For-When-the-NTP-Port-is-Blocked
    cd 
    sudo sh install.sh
