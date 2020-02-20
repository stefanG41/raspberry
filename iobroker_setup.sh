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
    7_setup_installation_info
else
    1_server_update_upgrade
    2_remove_node_and_nodejs
    3_downloade_node_setup
    4_install_node_and_nodejs
    5_check_nodes_version
    6_install_ioBroker_setup
    7_setup_installation_info
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
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
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

7_setup_installation_info ()
{
echo " reboot is required"
}

0_quastion_hostname_modify_hosts
