#!/bin/bash
#
# Setup the the box. This runs as root

apt-get -y update

apt-get -y install curl software-properties-common build-essential git-core libgmp3-dev graphicsmagick redis-server python-virtualenv python-dev

add-apt-repository -y ppa:webupd8team/java
curl -sL https://deb.nodesource.com/setup_4.x | bash -

apt-get -y install nodejs

if [[ $(npm -v | awk '{print $1}') < 2.4 ]]; then
  npm install -g npm@2.4
fi

echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
apt-get -y install oracle-java7-installer
