#!/bin/bash

add-apt-repository ppa:team-gcc-arm-embedded/ppa
apt-get -y update
apt-get -y install gcc-arm-embedded make
