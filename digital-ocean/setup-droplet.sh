#!/bin/sh
sudo apt update
sudo apt upgrade -y
sudo apt install openjdk-8-jre-headless htop nodejs docker net-tools -y
adduser jabbo
usermod -aG sudo jabbo