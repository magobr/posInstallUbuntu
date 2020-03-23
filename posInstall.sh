#!/bin/bash

sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock

## Atualizar S.0 ##
sudo apt upgrade -y

## Aualizar Pacotes ##
sudo apt-get update

sudo apt install flatpak -y

mkdir /home/$USER/Downloads/programas
cd /home/$USER/Downloads/programas

## Diretórios Padrão de Uso ##
mkdir /home/$USER/Documentos/Academico

mkdir /home/$USER/Documentos/Work

mkdir /home/$USER/Documentos/Church
mkdir /home/$USER/Documentos/Church/Jovens
mkdir /home/$USER/Documentos/Church/Adolecentes

mkdir /home/$USER/Documentos/Pessoal
mkdir /home/$USER/Documentos/Pessoal/Repositórios

## Arquivos .deb ##
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget -c https://az764295.vo.msecnd.net/stable/f359dd69833dd8800b54d458f6d37ab7c78df520/code_1.40.2-1574694120_amd64.deb

## install Gerenciador de pacotes ##
sudo apt install snap -y
sudo apt install curl -y

## install Apps (dpkg) ##
sudo dpkg -i *.deb -y

## install Apps ##
sudo apt install vim -y
sudo apt install gnome-tweaks -y

## intall Git ##
sudo apt install git -y

## install NodeJs ##
sudo apt install nodejs -y
sudo apt install npm -y
sudo npm install yarn --global

## ReactJs ##
sudo npm install -g create-react-app

## React Native ##
npm install -g expo-cli

## install php ##
sudo apt install apache2 -y 
sudo apt install php -y

