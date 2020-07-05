#!/usr/bin/env bash

SRC_DIR=~/src

# NO IP

#get no-ip updater
mkdir -p "${SRC_DIR}"
cd "${SRC_DIR}"
wget https://www.noip.com/client/linux/noip-duc-linux.tar.gz
tar xvfz ./noip-duc-linux.tar.gz

cd ./noip-duc-linux*
make
#make install
# create config, answer Qs
./noip2 -C -c ./noip.conf

#start it
./noip2 -c ./noip.conf


