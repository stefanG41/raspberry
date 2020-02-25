#!/bin/bash

iobroker stop
iobroker update
iobroker upgrade self
iobroker start
