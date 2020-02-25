#!/bin/bash


0_quastion_install_widgets_for_vis ()
{
echo "Do you wish to install the widgets for vis?"
echo -n "please choose (y/n)? "
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then

    MY_HOSTNAME=`uname -n`

    a_widgets='vis-hqwidgets'
    b_widgets='vis-bars'
    c_widgets='vis-canvas-gauges'
    d_widgets='vis-fancyswitch'
    e_widgets='vis-history'
    f_widgets='vis-jqui-mfd'
    g_widgets='vis-justgage'
    h_widgets='vis-map'
    i_widgets='vis-metro'
    j_widgets='vis-players'
    k_widgets='vis-timeandweather'
    l_widgets='vis-colorpicker'
    m_widgets='vis-keyboard'
    n_widgets='vis-lcars'
    o_widgets='vis-plumb'
    p_widgets='vis-rgraph'
    q_widgets='vis-weather'


    cd /opt/iobroker/
    ./iobroker add $a_widgets --host $MY_HOSTNAME
    ./iobroker add $b_widgets --host $MY_HOSTNAME
    ./iobroker add $c_widgets --host $MY_HOSTNAME
    ./iobroker add $d_widgets --host $MY_HOSTNAME
    ./iobroker add $e_widgets --host $MY_HOSTNAME
    ./iobroker add $f_widgets --host $MY_HOSTNAME
    ./iobroker add $g_widgets --host $MY_HOSTNAME
    ./iobroker add $h_widgets --host $MY_HOSTNAME
    ./iobroker add $i_widgets --host $MY_HOSTNAME
    ./iobroker add $j_widgets --host $MY_HOSTNAME
    ./iobroker add $k_widgets --host $MY_HOSTNAME
    ./iobroker add $l_widgets --host $MY_HOSTNAME
    ./iobroker add $m_widgets --host $MY_HOSTNAME
    ./iobroker add $n_widgets --host $MY_HOSTNAME
    ./iobroker add $o_widgets --host $MY_HOSTNAME
    ./iobroker add $p_widgets --host $MY_HOSTNAME
    ./iobroker add $q_widgets --host $MY_HOSTNAME


else
    exit
fi
}

#--------------- start script ----------------
0_quastion_install_widgets_for_vis
