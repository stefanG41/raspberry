#!/bin/bash

cd /opt/iobroker
sudo iobroker stop
sudo iobroker update
sudo iobroker upgrade self
sudo iobroker start
