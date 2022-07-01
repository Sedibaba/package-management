#!/bin/bash
# Author: Prof Legah
# date: 25/08/2020
# Installing Jenkins on RHEL 7/8, CentOS 7/8 or Amazon Linux OS
# You can execute this script as user-data when launching your EC2 VM.
cd /opt
# 1. Install Java and other pre-requisits. 
sudo yum -y install unzip wget tree git
sudo wget https://download.oracle.com/java/18/latest/jdk-18_linux-aarch64_bin.rpm
sudo yum install jdk-18_linux-aarch64_bin.rpm -y
#sudo wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" https://builds.openlogic.com/downloadJDK/openlogic-openjdk/11.0.15+10/openlogic-openjdk-11.0.15+10-linux-x64-el.rpm
#sudo yum install jdk-11.0.15+10-linux-x64-el.rpm -y
#******sudo wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" https://download.oracle.com/java/18/latest/jdk-18_linux-aarch64_bin.rpm
#*****sudo yum install jdk-18_linux-aarch64_bin.rpm -y
# 2. Add Jenkins Repository and key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
cd /etc/yum.repos.d/
sudo curl -O https://pkg.jenkins.io/redhat-stable/jenkins.repo
# 3. Install Jenkins
sudo yum -y install jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins





