#!/bin/bash 

#sudo apt-get remove docker docker-engine docker.io containerd runc
#sudo apt-get update
#sudo apt-get install \
#    apt-transport-https \
#    ca-certificates \
#    curl \
#    gnupg-agent \
#    software-properties-common \
#    htop
    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

# RESPONSE SHOULD BE:
# pub   rsa4096 2017-02-22 [SCEA]
#      9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
# uid           [ unknown] Docker Release (CE deb) <docker@docker.com>
$ sub   rsa4096 2017-02-22 [S]

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
   
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo docker run hello-world

sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo usermod -aG docker $USER

pip install --upgrade pip
pip install selenium==3.141.0
