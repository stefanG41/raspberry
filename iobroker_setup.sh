#!/bin/bash

0_quastion_hostname_modify_hosts ()
{
echo "Do you wish to change the hostname, it is recommanded but not needed?"
echo -n "please choose (y/n)? "
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    0_set_hostname_modify_hosts
    1_server_update_upgrade
    2_remove_node_and_nodejs
    3_downloade_node_setup
    4_install_node_and_nodejs
    5_check_nodes_version
    6_install_ioBroker_setup
    7_io_standard_adpater
    8_setup_installation_info
else
    1_server_update_upgrade
    2_remove_node_and_nodejs
    3_downloade_node_setup
    4_install_node_and_nodejs
    5_check_nodes_version
    6_install_ioBroker_setup
    7_io_standard_adpater
    8_setup_installation_info
fi
}

0_set_hostname_modify_hosts ()
{
echo "Please provide a new hostnamen:"
read new_hostname
sudo hostnamectl set-hostname $new_hostname
sudo sed -i "s/raspberrypi/$new_hostname/g" /etc/hosts
}

1_server_update_upgrade ()
{
sudo apt remove libvlc-bin vlc-plugin-qt -y  #derzeitiger Fehler
sudo apt-get update -y && sudo apt-get upgrade -y
}

2_remove_node_and_nodejs ()
{
sudo apt-get --purge remove node
sudo apt-get --purge remove nodejs
sudo apt-get autoremove
}

3_downloade_node_setup ()
{
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
}

4_install_node_and_nodejs ()
{
sudo apt-get install -y build-essential libavahi-compat-libdnssd-dev libudev-dev libpam0g-dev nodejs
}

5_check_nodes_version ()

{
node -v
nodejs -v
npm -v
}

6_install_ioBroker_setup ()

{
curl -sL https://iobroker.net/install.sh | bash -
}

7_io_standard_adpater ()
{
MY_HOSTNAME=`uname -n`

cd /opt/iobroker
./iobroker add zigbee  --host $MY_HOSTNAME
./iobroker add tr-064  --host $MY_HOSTNAME
./iobroker add backitup  --host $MY_HOSTNAME
./iobroker add alexa2  --host $MY_HOSTNAME
./iobroker add ping  --host $MY_HOSTNAME
./iobroker add fritzdect  --host $MY_HOSTNAME
#./iobroker add bosesoundtouch  --host $MY_HOSTNAME
./iobroker add harmony  --host $MY_HOSTNAME
#./iobroker add samsung  --host $MY_HOSTNAME
./iobroker add shelly  --host $MY_HOSTNAME
#./iobroker add synology  --host $MY_HOSTNAME
./iobroker add telegram  --host $MY_HOSTNAME
./iobroker add vis  --host $MY_HOSTNAME
./iobroker add javascript  --host $MY_HOSTNAME
#./iobroker add innogy-smarthome  --host $MY_HOSTNAME
}

8_setup_installation_info ()
{
echo " reboot is required"
echo " to enable the Zigbee CC2531 USB dongle, put the stick on the raspi and search with command"
echo " ls -lh /dev/serial/by-id/     if the command give you no output you should check the USB stick"
echo " COM-Conncetionname need to add the infromation from this output, like exapmle: "
echo " /dev/serial/by-id/usb-Texas_Instruments_TI_CC2531_USB_CDC___0X001xxxxxx2440-if00 "
echo " the only what need to modify is between  CDC___xxxxxxxx-if00 "
}

0_quastion_hostname_modify_hosts
