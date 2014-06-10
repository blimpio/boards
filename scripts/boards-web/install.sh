#!/bin/bash

cd /home/vagrant/apps

# clone project
git clone https://github.com/GetBlimp/boards-web.git

cd boards-web/

# install npm dependencies
npm install -g brunch gulp scaffolt bower

npm install
bower install --config.interactive=false

# Build files
gulp build:production

# copy nginx setup
sudo cp /vagrant/scripts/boards-web/templates/nginx-boards-web /etc/nginx/sites-enabled/nginx-boards-web
sudo service nginx restart

# Change static url
sudo sed -i "s/BOARDS_WEB_STATIC_URL=''/BOARDS_WEB_STATIC_URL='http:\/\/localhost:8080'/g" /home/vagrant/apps/boards-backend/.env
sudo restart boards
