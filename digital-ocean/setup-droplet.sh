#!/bin/sh
sudo apt update
sudo apt upgrade -y
sudo apt install openjdk-8-jre-headless htop nodejs docker net-tools -y
adduser jabbo
usermod -aG sudo jabbo

cd /opt
wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
tar -zxvf latest-unix.tar.gz
adduser nexus
chown -R nexus:nexus nexus-3.42.0-01
chown -R nexus:nexus sonatype-work
vim nexus-3.42.0-01/bin/nexus.rc
run_as_user="nexus"
su - nexus
/opt/nexus-3.42.0-01/bin/nexus start
ps aux | grep nexus
netstat -lnpt
snap install docker
docker volume create --name nexus-data
docker run -d -p 8088:8081 --name nexus -v nexus-data:/nexus-data sonatype/nexus3
docker run -p 8080:8080 -p 50000:50000 -d  -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/usr/bin/docker jenkins/jenkins:latest
