#!/usr/bin/env bash

wget -O - http://tinyprod.net/repos/debian/tinyprod.key | sudo apt-key add -

echo "deb http://tinyprod.net/repos/debian squeeze main" >> /etc/apt/sources.list
echo "deb http://tinyprod.net/repos/debian msp430-47 main" >> /etc/apt/sources.list
  
# force update
apt-get update

# install tinyos-tools
apt-get install -y --force-yes make msp430-47 nesc tinyos-tools

echo "source /vagrant/tinyos-2.1.2/tinyos.sh" >> /home/vagrant/.bashrc

source /home/vagrant/.bashrc

sudo usermod -a -G dialout vagrant