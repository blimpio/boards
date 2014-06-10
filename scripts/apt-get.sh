#!/bin/bash

# Update all the things
sudo apt-get -y update

# Build essential ssl and git
sudo apt-get -y install build-essential libssl-dev git-core

# Curl
sudo apt-get -y install curl

# Install Python
sudo apt-get -y install python-dev

# Install PostgreSQL
sudo apt-get -y install libpq-dev postgresql

# Install redis
sudo apt-get -y install redis-server

# Install nginx
sudo apt-get -y install nginx

# Install fail2ban
sudo apt-get install -y fail2ban

# Install unattended-upgrades
sudo apt-get install -y unattended-upgrades

# Adjust APT update intervals
sudo cat > /etc/apt/apt.conf.d/10periodic << EOF
APT::Periodic::Update-Package-Lists "1";
APT::Periodic::Download-Upgradeable-Packages "1";
APT::Periodic::AutocleanInterval "7";
APT::Periodic::Unattended-Upgrade "1";
EOF
