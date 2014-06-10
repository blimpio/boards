#!/bin/bash

mkdir /home/vagrant/apps
cd /home/vagrant/apps

# clone project
git clone https://github.com/GetBlimp/boards-backend.git

cd boards-backend/

# install pip requirements
sudo pip install -r requirements.txt

# create empty database
sudo -u postgres psql -c "CREATE user vagrant WITH PASSWORD 'CHANGEME';"
sudo -u postgres psql -c "CREATE DATABASE boards WITH owner vagrant;"

# copy example .env file
cp .env.example .env

# Add database url
echo "" >> /home/vagrant/apps/boards-backend/.env  # make sure we insert a blank line
echo "DATABASE_URL='postgres://vagrant:CHANGEME@localhost/boards'" >> /home/vagrant/apps/boards-backend/.env

# turn off django debug toolbar
echo "DEBUG_TOOLBAR_PATCH_SETTINGS='no'" >> /home/vagrant/apps/boards-backend/.env

python manage.py syncdb --noinput
python manage.py migrate apps.users
python manage.py migrate
python manage.py loaddata blimp_boards/users/fixtures/users.json

# copy nginx setup
sudo cp /vagrant/scripts/boards-backend/templates/nginx-boards-backend /etc/nginx/sites-enabled/nginx-boards-backend
sudo service nginx restart

# upstart setup
sudo cp /vagrant/scripts/boards-backend/templates/boards-upstart.conf /etc/init/boards.conf
sudo start boards
