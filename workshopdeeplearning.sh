#/usr/bin/env bash
# -*- ENCODING: UTF-8 -*-

sudo apt-add-repository -y ppa:pdoes/ppa
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository -y \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce git
sudo docker pull pablo1n7/tatooine
git clone https://github.com/celiacintas/star_wars_hackathon.git
# sh star_wars_hackathon/run-docker.sh