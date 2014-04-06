#!/bin/sh

echo Install APT Packages
	apt-get update

echo Install Java 7
	apt-get -y install openjdk-7-jdk
	update-java-alternatives -s java-1.7.0-openjdk-amd6


