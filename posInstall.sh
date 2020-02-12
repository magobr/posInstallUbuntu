#!/bin/bash

sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock

sudo apt-get update

mkdir /home/$USER/Downloads/programas

cd /home/$USER/Downloads/programas

## Arquivos .deb ##
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget -c https://az764295.vo.msecnd.net/stable/f359dd69833dd8800b54d458f6d37ab7c78df520/code_1.40.2-1574694120_amd64.deb

## install Gerenciador de pacotes ##
sudo apt install snap
sudo apt install curl

## install Apps (dpkg) ##
sudo dpkg -i *.deb

## install Apps ##
sudo apt install vim
sudo apt install gnome-tweaks

## intall Git ##
sudo apt install git

## install NodeJs ##
sudo apt install nodejs
sudo apt install npm
sudo npm install yarn --global

## ReactJs ##
sudo npm install -g create-react-app

## React Native ##
npm install -g expo-cli

## install php ##
sudo apt install apache2 
sudo apt install php

## install Apps (Snap) ##
sudo snap install blix
sudo snap install libreoffice

## Atualizar S.0 ##
sudo apt upgrade
