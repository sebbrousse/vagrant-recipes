#!/bin/sh


echo Install APT Packages
	apt-get update

echo Install Java 7
	apt-get -y install openjdk-7-jdk
	update-java-alternatives -s java-1.7.0-openjdk-amd6

echo Install Tomcat 7
	apt-get -y install tomcat7 tomcat7-admin

echo Configure Tomcat 7
	cat /vagrant/$1 > /usr/share/tomcat7/bin/setenv.sh
	cat /vagrant/$2 > /etc/tomcat7/tomcat-users.xml

echo Launching Tomcat 7
	service tomcat7 restart


