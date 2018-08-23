#!/bin/bash
#set -e

if [[ $(id -u) -ne 0 ]]; then
	echo 'This script must be run as root' 1>&2
	sudo $0 $@
	exit 1
fi

echo

locale-gen ko_KR.UTF-8

apt install -y apt-transport-https ca-certificates git htop gnome-tweak-tool
