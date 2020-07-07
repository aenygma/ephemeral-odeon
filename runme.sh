#!/usr/bin/env bash

SRC_DIR=~/src

# Start GCP VM instance


# Install Plex
#  From: https://www.linode.com/docs/applications/media-servers/install-plex-media-server-on-ubuntu-18-04/

wget https://downloads.plex.tv/plex-media-server-new/1.19.4.2935-79e214ead/debian/plexmediaserver_1.19.4.2935-79e214ead_amd64.deb
sudo dpkg -i plexmediaserver*.deb
sudo systemctl enable plexmediaserver.service
sudo systemctl start plexmediaserver.service

# Install VPN


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


