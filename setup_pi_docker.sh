1_update_and_upgrade_pi ()

{
sudo apt-get update && sudo apt-get upgrade -y
}

2_change_hostname ()

{
sudo hostname docker
}


3_
sudo nano /etc/hostname
sudo nano /etc/hosts

sudo curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh
sudo apt-get install docker-compose -y
sudo usermod -aG docker pi

sudo reboot
