#!/bin/bash
 sudo yum install java -y
 cd ~
 wget https://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.68/bin/apache-tomcat-8.5.68.tar.gz
 sudo mkdir /apps
 sudo chmod 777 /apps/
 cd /apps
 mkdir tomcat
 tar -xvf ~/apache-tomcat-8.5.68.tar.gz
 cp -r apache-tomcat-8.5.68/* tomcat/
 rm -rf apache-tomcat-8.5.68/
 cd tomcat/webapps/
 wget https://get.jenkins.io/war-stable/2.289.1/jenkins.war
 cd ../bin
 ./catalina.sh start
 sudo service firewalld stop
