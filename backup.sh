# install first 

sudo apt-get -y install ntfs-3g hfsutils hfsprogs exfat-fuse
sudo mkdir /media/usbfestplatte
sudo blkid -o list -w /dev/null

lsblk
# mount first usb
sudo mount -t ntfs-3g -o utf8,uid=pi,gid=pi,noatime /dev/sda"verfiy right path" /media/usbfestplatte
sudo mount -t ntfs-3g -o utf8,uid=pi,gid=pi,noatime /dev/sda /media/usbfestplatte


cat /usr/local/bin/Backup.sh

#!/bin/bash

# VARIABLEN - HIER EDITIEREN
#BACKUP_PFAD="/NFS_DATA_2/"
BACKUP_PFAD="/media/usbfestplatte"
BACKUP_ANZAHL="7"
BACKUP_NAME="RaspberryPiBackupDC"
DIENSTE_START_STOP="service mysql"
# ENDE VARIABLEN

# Stoppe Dienste vor Backup
#${DIENSTE_START_STOP} stop

# Backup mit Hilfe von dd erstellen und im angegebenen Pfad speichern
#dd if=/dev/mmcblk0 of=${BACKUP_PFAD}/${BACKUP_NAME}-$(date +%Y%m%d-%H%M%S).img bs=1MB
#dd if=/dev/mmcblk0 of=${BACKUP_PFAD}/${BACKUP_NAME}.img bs=1MB
/home/pi/bin/./pishrink.sh ${BACKUP_PFAD}/${BACKUP_NAME}.img
#~/bin/./pishrink.sh /NFS_DATA_2/RaspberryPiBackupDC.img
mv ${BACKUP_PFAD}/${BACKUP_NAME}.img ${BACKUP_PFAD}/shrink/${BACKUP_NAME}-$(date +%Y%m%d-%H%M%S).img



# Starte Dienste nach Backup
#${START_SERVICES} start

# Alte Sicherungen die nach X neuen Sicherungen entfernen
pushd ${BACKUP_PFAD}; ls -tr ${BACKUP_PFAD}/shrink/${BACKUP_NAME}* | head -n -${BACKUP_ANZAHL} | xargs rm; popd


sudo crontab -e
00 01 * * 0 /usr/local/bin/Backup.sh
