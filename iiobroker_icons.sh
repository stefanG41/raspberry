#!/bin/bash


0_quastion_install_icons_for_vis ()
{
echo "Do you wish to install the icons for vis?"
echo -n "please choose (y/n)? "
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
  
    MY_HOSTNAME=`uname -n`

    1=icons-addictive-flavour-png
    2=icons-fatcow-hosting
    3=icons-icons
    4=
    5=
    6=
    7=
    8=
    9=
    10=
   
    
    cd /opt/iobroker/
    ./iobroker add $1 --host $MY_HOSTNAME
    ./iobroker add $2 --host $MY_HOSTNAME
    ./iobroker add $3 --host $MY_HOSTNAME
    ./iobroker add $4 --host $MY_HOSTNAME
    ./iobroker add $5 --host $MY_HOSTNAME
    ./iobroker add $6 --host $MY_HOSTNAME
    ./iobroker add $7 --host $MY_HOSTNAME
    ./iobroker add $8 --host $MY_HOSTNAME
    ./iobroker add $9 --host $MY_HOSTNAME
    ./iobroker add $10 --host $MY_HOSTNAME
    
    
else
    exit
fi
}




