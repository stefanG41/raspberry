#!/bin/bash


0_quastion_install_widgets_for_vis ()
{
echo "Do you wish to install the widgets for vis?"
echo -n "please choose (y/n)? "
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then

    MY_HOSTNAME=`uname -n`

    a_icon='vis-hqwidgets'
    b_icon='vis-bars'
    c_icon='vis-canvas-gauges'
    d_icon='vis-fancyswitch'
    e_icon='vis-history'
    f_icon='vis-jqui-mfd'
    g_icon='vis-justgage'
    h_icon='vis-map'
    i_icon='vis-metro'
    j_icon='vis-players'
    k_icon='vis-timeandweather'
    l_icon='vis-colorpicker'
    m_icon='vis-keyboard'
    n_icon='vis-lcars'
    o_icon='vis-plumb'
    p_icon='vis-rgraph'
    q_icon='vis-weather'


    cd /opt/iobroker/
    ./iobroker add $a_icon --host $MY_HOSTNAME
    ./iobroker add $b_icon --host $MY_HOSTNAME
    ./iobroker add $c_icon --host $MY_HOSTNAME
    ./iobroker add $d_icon --host $MY_HOSTNAME
    ./iobroker add $e_icon --host $MY_HOSTNAME
    ./iobroker add $f_icon --host $MY_HOSTNAME
    ./iobroker add $g_icon --host $MY_HOSTNAME
    ./iobroker add $h_icon --host $MY_HOSTNAME
    ./iobroker add $i_icon --host $MY_HOSTNAME
    ./iobroker add $j_icon --host $MY_HOSTNAME
    ./iobroker add $k_icon --host $MY_HOSTNAME
    ./iobroker add $l_icon --host $MY_HOSTNAME
    ./iobroker add $m_icon --host $MY_HOSTNAME
    ./iobroker add $n_icon --host $MY_HOSTNAME
    ./iobroker add $o_icon --host $MY_HOSTNAME
    ./iobroker add $p_icon --host $MY_HOSTNAME
    ./iobroker add $qicon --host $MY_HOSTNAME


else
    exit
fi
}

#--------------- start script ----------------
0_quastion_install_icons_for_vis
