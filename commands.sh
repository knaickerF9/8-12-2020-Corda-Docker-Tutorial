#!/bin/bash 

sudo apt-get -qq update -y 
sudo apt-get -qq -y install openjdk-8-jre
sudo apt install unzip -y 
sudo apt-get remove docker docker-engine docker.io -y 
sudo apt install docker.io -y 
sudo groupadd docker 
sudo usermod -aG docker $USER
newgrp docker
sudo curl -L https://github.com/docker/compose/releases/download/1.24.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo chown $(whoami) -R ./*
