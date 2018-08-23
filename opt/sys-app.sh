#!/bin/bash
#set -e

if [[ $(id -u) -ne 0 ]]; then
   echo 'This script must be run as root' 1>&2
   sudo $0 $@
   exit 1
fi


echo == add-apt-repository
add-apt-repository --yes ppa:webupd8team/atom
wget -q -O - https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | apt-key add -
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
wget -q -O - https://mkvtoolnix.download/gpg-pub-moritzbunkus.txt | apt-key add -

echo 'deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main' > /etc/apt/sources.list.d/vscode.list
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' > /etc/apt/sources.list.d/google.list
echo 'deb https://mkvtoolnix.download/ubuntu/artful/ ./' > /etc/apt/sources.list.d/bunkus.org.list
echo 'deb-src https://mkvtoolnix.download/ubuntu/artful/ ./ ' >> /etc/apt/sources.list.d/bunkus.org.list

echo == update
apt-get update

echo == install
apt install -y numix-gtk-theme

apt install -y net-tools

apt install -y synaptic
apt install -y google-chrome-stable
apt install -y code terminator
apt install -y build-essential make cmake git