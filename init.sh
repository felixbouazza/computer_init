# !/bin/bash

## OUTPUT COLOR

GREEN='\033[0;32m'

sudo apt-get -y install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg \
  lsb-release

## Python3

sudo apt-get -y install python3 python3-pip python3-dev gcc musl-dev libffi-dev libc-dev make

echo -e "${GREEN}Python successfully installed"

## Terminator

sudo apt-get -y install terminator

echo -e "${GREEN}Terminator successfully installed"

## Keepass2

sudo apt-get -y install keepass2

echo -e "${GREEN} Keepass 2 successfully installed"

## NodeJS v16.0

wget -qO- https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get -y install nodejs

echo -e "${GREEN}NodeJS successfully installed"

## VSCODE

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt-get update
sudo apt-get -y install code

echo -e "${GREEN}VSCode successfully installed"

## Docker

sudo apt-get update
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
sudo groupadd docker || echo
sudo usermod -aG docker $USER

echo -e "${GREEN}Docker successfully installed"

## For docker installation, you have to logout and login and run "newgrp docker"