#! /bin/bash

apt update; apt upgrade -y
#Docker
apt -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
apt update ; apt -y install docker-ce docker-ce-cli containerd.io

#Compose
curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

#App

git clone https://github.com/DarioFlores/anc-pensar-back
git clone https://github.com/DarioFlores/anc-pensar-front
git clone https://github.com/ChristianBarrientos/severini-ancasti

 2041  cp anc-pensar-front/.env versionNueva/anc-pensar-front/
 2042  cp anc-pensar-front/Dockerfile versionNueva/anc-pensar-front/
 2043  cp anc-pensar-front/.dockerignore versionNueva/anc-pensar-front/
 2044  cp anc-pensar-front/config/server.config.ts versionNueva/anc-pensar-front/src/app/config/
 2045  cp anc-pensar-back/.env versionNueva/anc-pensar-back/
 2046  cp anc-pensar-back/Dockerfile versionNueva/anc-pensar-back/
 2047  cp anc-pensar-back/.dockerignore versionNueva/anc-pensar-back/
 2048  clear
 2049  docker-compose up --remove-orphans
 2050  ls
 2051  cp versionNueva/docker-compose.yml ../severini-ancasti/
 2052  cp versionNueva/anc-pensar-back/Dockerfile ../severini-ancasti/back/
 2053  cp versionNueva/anc-pensar-front/Dockerfile ../severini-ancasti/front/
 2054  cp versionNueva/anc-pensar-front/src/app/config/server.config.ts ../severini-ancasti/front/
 2055  cp versionNueva/anc-pensar-front/.env ../severini-ancasti/front/
 2056  cp versionNueva/anc-pensar-back/.env ../severini-ancasti/back/
 2057  cp versionNueva/anc-pensar-back/.dockerignore ../severini-ancasti/back/
 2058  cp versionNueva/anc-pensar-front/.dockerignore ../severini-ancasti/front/