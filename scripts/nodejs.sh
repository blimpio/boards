#!/bin/bash

git clone https://github.com/creationix/nvm.git /home/vagrant/.nvm
echo "[ -s /home/vagrant/.nvm/nvm.sh ] && . /home/vagrant/.nvm/nvm.sh # This loads NVM" >> /home/vagrant/.bash_profile
source /home/vagrant/.nvm/nvm.sh

nvm install 0.10
nvm alias default 0.10

sudo chown -R vagrant:vagrant /home/vagrant/.nvm/

source /home/vagrant/.bash_profile
