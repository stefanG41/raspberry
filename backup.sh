# install first 

sudo apt-get -y install ntfs-3g hfsutils hfsprogs exfat-fuse && sudo mkdir /media/usbfestplatte && sudo blkid -o list -w /dev/null

lsblk
# mount first usb
# sudo mount -t ntfs-3g -o utf8,uid=pi,gid=pi,noatime /dev/sda"verfiy right path" /media/usbfestplatte
sudo mount -t ntfs-3g -o utf8,uid=pi,gid=pi,noatime /dev/sda2 /media/usbfestplatte

sudo touch /usr/local/bin/Backup.sh && sudo chmod +x /usr/local/bin/Backup.sh && sudo nano /usr/local/bin/Backup.sh

#————— shrink script —————-
wget https://raw.githubusercontent.com/Drewsif/PiShrink/master/pishrink.sh -P ~/bin

chmod +x ~/bin/pishrink.sh

#—————- backup script —————

#!/bin/bash

# VARIABLEN - HIER EDITIEREN
BACKUP_PFAD="/media/usbfestplatte"
BACKUP_ANZAHL="7"
BACKUP_NAME="RaspberryPiBackup"
SHIRNK_PATH="/home/pi/bin/pishrink.sh"
DIENSTE_START_STOP="service mysql"
# ENDE VARIABLEN

# Stoppe Dienste vor Backup
#${DIENSTE_START_STOP} stop

# Backup mit Hilfe von dd erstellen und im angegebenen Pfad speichern
dd if=/dev/mmcblk0 of=${BACKUP_PFAD}/${BACKUP_NAME}.img bs=1MB
# pishring verkleinert das ganze Backup auf das minimum 
${SHIRNK_PATH} ${BACKUP_PFAD}/${BACKUP_NAME}.img
mv ${BACKUP_PFAD}/${BACKUP_NAME}.img ${BACKUP_PFAD}/shrink/${BACKUP_NAME}-$(date +%Y%m%d-%H%M%S).img



# Starte Dienste nach Backup
#${START_SERVICES} start

# Alte Sicherungen die nach X neuen Sicherungen entfernen
pushd ${BACKUP_PFAD}; ls -tr ${BACKUP_PFAD}/shrink/${BACKUP_NAME}* | head -n -${BACKUP_ANZAHL} | xargs rm; popd

#—————- create cronjob —————
sudo crontab -e
00 01 * * 0 /usr/local/bin/Backup.sh
