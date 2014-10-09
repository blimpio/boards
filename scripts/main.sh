#!/bin/bash

set -e -x
export DEBIAN_FRONTEND=noninteractive
sudo ln -sf /usr/share/zoneinfo/UTC /etc/localtime

# ssh config
bash /vagrant/scripts/ssh.sh

# apt-get installs
bash /vagrant/scripts/apt-get.sh

# Setup nginx
bash /vagrant/scripts/nginx.sh

# pip installs
bash /vagrant/scripts/pip.sh

# Make the prompt look nicer
bash /vagrant/scripts/prompt.sh

# .profile settings
bash /vagrant/scripts/profile.sh

# git config
bash /vagrant/scripts/git.sh

# PostgreSQL
bash /vagrant/scripts/postgresql.sh

# Redis
bash /vagrant/scripts/redis.sh

# Node.js
bash /vagrant/scripts/nodejs.sh

# Install boards-backend
bash /vagrant/scripts/boards-backend/install.sh

# Install boards-web
bash /vagrant/scripts/boards-web/install.sh

# Fix permissions in apps folder
chown -R vagrant:vagrant apps/
