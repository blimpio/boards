#!/bin/bash

echo "alias ls='ls -lah --color'" >> /home/vagrant/.bash_profile
echo "export GREP_OPTIONS='--color=auto'" >> /home/vagrant/.bash_profile
echo "export CLICOLOR=1" >> /home/vagrant/.bash_profile
echo "export LS_COLORS='di=33:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35'" >> /home/vagrant/.bash_profile
