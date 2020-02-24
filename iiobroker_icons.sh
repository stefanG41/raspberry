#!/bin/bash


0_quastion_install_icons_for_vis ()
{
echo "Do you wish to install the icons for vis?"
echo -n "please choose (y/n)? "
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
  
    MY_HOSTNAME=`uname -n`

    1_icon=icons-addictive-flavour-png
    2_icon=icons-fatcow-hosting
    3_icon=icons-icons
    4_icon=icons-material-png
    5_icon=icons-material-svg
    6_icon=icons-mfd-png
    7_icon=icons-mfd-svg
    8_icon=icons-open-icon-library-png
    9_icon=icons-ultimate-png
#    10_icon=
   
    
    cd /opt/iobroker/
#    ./iobroker add $1_icon --host $MY_HOSTNAME
    ./iobroker add $2_icon --host $MY_HOSTNAME
    ./iobroker add $3_icon --host $MY_HOSTNAME
    ./iobroker add $4_icon --host $MY_HOSTNAME
    ./iobroker add $5_icon --host $MY_HOSTNAME
    ./iobroker add $6_icon --host $MY_HOSTNAME
    ./iobroker add $7_icon --host $MY_HOSTNAME
    ./iobroker add $8_icon --host $MY_HOSTNAME
    ./iobroker add $9_icon --host $MY_HOSTNAME
#   ./iobroker add $10_icon --host $MY_HOSTNAME
    
    
else
    exit
fi
}

#--------------- start script ----------------
0_quastion_install_icons_for_vis
