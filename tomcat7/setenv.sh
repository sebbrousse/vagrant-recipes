#!/bin/sh

APP_CONF=/etc/tomcat7

export CATALINA_OPTS="-Xms512m -Xmx512m -XX:MaxPermSize=256m"
export CATALINA_OPTS="$CATALINA_OPTS -Dlogs.base=/var/log/sunrise/"

# ---------------------------------------------------------------------------------------------------------------------------
# Forbid root execution 
# ---------------------------------------------------------------------------------------------------------------------------

if [ `id -u` -eq 0 ] ;
then
	echo "!!!!!!!!!!!! WARNING !!!!!!!!!!!!!!!"
	echo "This script can not be run as root"
	echo "Switch to a user session using \"su - _USER_ \" "
	exit 1
fi
