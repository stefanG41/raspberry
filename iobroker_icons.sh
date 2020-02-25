#!/bin/bash


0_quastion_install_icons_for_vis ()
{
echo "Do you wish to install the icons for vis?"
echo -n "please choose (y/n)? "
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then

    MY_HOSTNAME=`uname -n`

    a_icon='icons-addictive-flavour-png'
    b_icon='icons-fatcow-hosting'
    c_icon='icons-icons8'
    d_icon='icons-material-png'
    e_icon='icons-material-svg'
    f_icon='icons-mfd-png'
    g_icon='icons-mfd-svg'
    h_icon='icons-open-icon-library-png'
    i_icon='icons-ultimate-png'
#    j_icon=


    cd /opt/iobroker/
#    ./iobroker add $a_icon --host $MY_HOSTNAME
    ./iobroker add $b_icon --host $MY_HOSTNAME
    ./iobroker add $c_icon --host $MY_HOSTNAME
    ./iobroker add $d_icon --host $MY_HOSTNAME
    ./iobroker add $e_icon --host $MY_HOSTNAME
    ./iobroker add $f_icon --host $MY_HOSTNAME
    ./iobroker add $g_icon --host $MY_HOSTNAME
    ./iobroker add $h_icon --host $MY_HOSTNAME
    ./iobroker add $i_icon --host $MY_HOSTNAME
#   ./iobroker add $j_icon --host $MY_HOSTNAME


else
    exit
fi
}

#--------------- start script ----------------
0_quastion_install_icons_for_vis
