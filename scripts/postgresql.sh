#!/bin/bash

sudo -u postgres createdb development
sudo -u postgres psql -U postgres -d postgres -c "alter user postgres with password 'password';"
echo "listen_addresses = '*'" | sudo -u postgres tee -a /etc/postgresql/9.1/main/postgresql.conf
echo "host all all 0.0.0.0/0 md5" | sudo -u postgres tee -a /etc/postgresql/9.1/main/pg_hba.conf
sudo service postgresql restart
