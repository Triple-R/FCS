#!/bin/sh

sudo dnf install zlib.i686 ncurses-libs.i686 bzip2-libs.i686 -y

# Packages for virtualization
sudo dnf -y groupinstall "Virtualization"
sudo dnf -y install qemu-img libvirt libvirt-python libvirt-client

# Open Downloads directory
cd ~/Downloads
wget -q --show-progress https://dl.google.com/dl/android/studio/ide-zips/3.2.0.26/android-studio-ide-181.5014246-linux.zip

# Unzip the package to /opt/ directory
sudo unzip android-studio-ide-181.5014246-linux.zip -d /opt/

sudo rm android-studio-ide-181.5014246-linux.zip

cd /opt/android-studio/bin/
./studio.sh 