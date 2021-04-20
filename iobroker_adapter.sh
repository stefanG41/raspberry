#!/bin/bash

MY_HOSTNAME=`uname -n`

cd /opt/iobroker
./iobroker add zigbee  --host $MY_HOSTNAME
./iobroker add tr-064  --host $MY_HOSTNAME
./iobroker add backitup  --host $MY_HOSTNAME
./iobroker add alexa2  --host $MY_HOSTNAME
./iobroker add ping  --host $MY_HOSTNAME
./iobroker add fritzdect  --host $MY_HOSTNAME
./iobroker add bosesoundtouch  --host $MY_HOSTNAME
./iobroker add harmony  --host $MY_HOSTNAME
./iobroker add samsung  --host $MY_HOSTNAME
./iobroker add shelly  --host $MY_HOSTNAME
./iobroker add synology  --host $MY_HOSTNAME
./iobroker add telegram  --host $MY_HOSTNAME
./iobroker add vis  --host $MY_HOSTNAME
./iobroker add iot  --host $MY_HOSTNAME
./iobroker add mihome-vacuum  --host $MY_HOSTNAME
./iobroker add text2command  --host $MY_HOSTNAME
