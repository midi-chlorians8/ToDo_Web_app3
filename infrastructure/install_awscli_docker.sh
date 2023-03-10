#!/bin/bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
rm get-docker.sh

touch a1

sudo usermod -aG docker ubuntu


sudo apt install --yes  python3-pip
sudo pip3 install docker-compose

touch a2

git clone https://github.com/midi-chlorians8/ToDo_Web_app3.git
cd ToDo_Web_app3/
chmod +x /home/ubuntu/init-letsencrypt.sh