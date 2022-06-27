#  **<span style="color:green">Landmark Technologies, Ontario, Canada.</span>**
### **<span style="color:green">Contacts: +1437 215 2483<br> WebSite : <http://mylandmarktech.com/></span>**
### **Email: mylandmarktech@gmail.com**



## Apache Tomcat Installation And Setup In AWS EC2 Redhat Instnace.
##### Prerequisite
+ AWS Acccount.
+ Create Redhat EC2 T2.micro Instnace.
+ Create Security Group and open Tomcat ports or Required ports.
   + 8080 ..etc
+ Attach Security Group to EC2 Instance.
+ Install java openJDK 1.8+

### Install Java JDK 1.8+ & Tomcat version 10.0.22

``` sh
# install Java JDK 1.8+ as a pre-requisit for tomcat to run.
cd /opt 
sudo yum install git wget -y
sudo yum install wget unzip -y
sudo wget https://download.java.net/java/GA/jdk18.0.1.1/65ae32619e2f40f3a9af3af1851d6e19/2/GPL/openjdk-18.0.1.1_linux-aarch64_bin.tar.gz
sudo tar -xvf openjdk-18.0.1.1_linux-aarch64_bin.tar.gz
# Download tomcat software and extract it.
sudo wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.22/bin/apache-tomcat-10.0.22.tar.gz
sudo tar -xvf apache-tomcat-10.0.22.tar.gz
sudo rm apache-tomcat-10.0.22.tar.gz
sudo mv apache-tomcat-10.0.22 tomcat10
sudo chmod 777 -R /opt/tomcat10
sudo sh /opt/tomcat10/bin/startup.sh
# create a soft link to start and stop tomcat
sudo ln -s /opt/tomcat10/bin/startup.sh /usr/bin/starttomcat
sudo ln -s /opt/tomcat10/bin/shutdown.sh /usr/bin/stoptomcat
starttomcat


```

