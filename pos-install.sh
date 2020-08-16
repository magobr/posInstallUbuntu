#!/bin/bash

sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock

## Atualizar S.0 ##
sudo apt upgrade -y

## Aualizar Pacotes ##
sudo apt-get update -y

sudo dpkg --configure -a

## Repositório flatpak ##
sudo apt install flatpak -y

## Diretórios Padrão de Uso ##
mkdir /home/$USER/Documentos/Academico

mkdir /home/$USER/Documentos/Work

mkdir /home/$USER/Documentos/Church
mkdir /home/$USER/Documentos/Church/Jovens
mkdir /home/$USER/Documentos/Church/Adolecentes

mkdir /home/$USER/Documentos/Pessoal
mkdir /home/$USER/Documentos/Pessoal/Repositórios

## Repositórios para .deb ##
mkdir /home/$USER/Downloads/programas
cd /home/$USER/Downloads/programas

## Arquivos .deb ##
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget -c https://az764295.vo.msecnd.net/stable/f359dd69833dd8800b54d458f6d37ab7c78df520/code_1.40.2-1574694120_amd64.deb

## install Apps (dpkg) ##
sudo dpkg -i *.deb

## install Gerenciador de pacotes ##
sudo apt install snap -y
sudo apt install curl -y
sudo apt install flatpak -y

## install Apps ##
sudo apt install unrar -y
sudo apt install vim -y
sudo apt install gnome-tweaks -y
sudo apt-get install youtube-dl -y
sudo snap install thunderbird

## install Insomnia ##
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add -
sudo apt-get update -y
sudo apt-get install insomnia -y

## install Docker ##
sudo apt-get install  curl apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update -y
sudo apt install docker-ce -y

## install Docker Compose ##

sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

## install NodeJs ##
sudo apt install nodejs -y
sudo apt install npm -y
sudo npm install yarn --global
