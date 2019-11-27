#!/bin/bash

sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

#install Gerenciador de pacotes
sudo apt install snap
sudo apt update
sudo apt-get upgrade
sudo apt install curl

##install Apps
sudo apt-get install vim
sudo apt-get install gnome-tweak
sudo snap install blix
sudo dpkg -i google-chrome-stable_current_amd64.deb

sudo apt install git

##install nodejs
sudo apt install nodejs
sudo apt install npm
sudo apt install yarn

##install php
sudo apt install apache2 
sudo apt install php

##install MySql
sudo apt install mysql-server

