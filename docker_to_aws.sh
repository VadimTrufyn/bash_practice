
#/bin/bash

sudo yum update
sudo yum install docker -y
sudo systemctl start docker
sudo docker ps
sudo usermod -aG docker $USER
echo "Relog"
exit
