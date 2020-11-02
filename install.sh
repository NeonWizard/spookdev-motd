#!/bin/bash

# Install packages
apt update
apt install toilet
apt install update-notifier

# Download the archive
curl -L https://github.com/NeonWizard/spookdev-motd/archive/master.tar.gz | tar -zxv

# Move old motd files to directory
mkdir /etc/update-motd.d/old-motd
mv /etc/update-motd.d/* /etc/update-motd.d/old-motd

# Move unzipped motd files to /etc
mv spookdev-motd-master/motd/* /etc/update-motd.d

# Clean up downloaded files
rm -rf spookdev-motd-master
