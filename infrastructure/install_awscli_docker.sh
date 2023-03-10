#!/bin/bash


# install aws cli to ECR connection
sudo apt install unzip -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
rm get-docker.sh



sudo usermod -aG docker ubuntu


sudo apt install --yes  python3-pip
sudo pip3 install docker-compose


cd /home/ubuntu
chown ubuntu /home/ubuntu/ToDo_Web_app3
touch IamHer
git clone https://github.com/midi-chlorians8/ToDo_Web_app3.git

cd ToDo_Web_app3/
chmod +x /home/ubuntu/init-letsencrypt.sh

