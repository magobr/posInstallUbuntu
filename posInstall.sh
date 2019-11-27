#!/bin/bash

sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock

sudo apt-get update

mkdir /home/$USER/Downloads/programas

cd /home/$USER/Downloads/programas

## install Gerenciador de pacotes ##
sudo apt install snap
 

## Arquivos .deb ##
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget -c https://az764295.vo.msecnd.net/stable/f359dd69833dd8800b54d458f6d37ab7c78df520/code_1.40.2-1574694120_amd64.deb

## install Gerenciador de pacotes ##
sudo apt install snap
sudo apt-get upgrade
sudo apt install curl

## install Apps ##
sudo apt-get install vim
sudo apt-get install gnome-tweak

sudo snap install blix

sudo dpkg -i *.deb

## intall Git ##
sudo apt install git

## install nodejs ##
sudo apt install nodejs
sudo apt install npm
sudo apt install yarn

## install php ##
sudo apt install apache2 
sudo apt install php

## install MySql ##
sudo apt install mysql-server

