#!/bin/bash
#set -e

gsettings set org.gnome.desktop.peripherals.keyboard delay 250
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 11

gsettings set org.gnome.shell enable-hot-corners true

gsettings set org.gnome.gedit.preferences.encodings candidate-encodings "['UTF-8','UHC','UTF-16']"

gsettings set org.gnome.desktop.interface gtk-theme "Numix"
gsettings set org.gnome.desktop.wm.preferences theme "Numix"