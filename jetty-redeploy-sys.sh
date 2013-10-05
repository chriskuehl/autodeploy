#!/bin/bash
APP_NAME=$1
WAR_PATH=$2

echo "App name: $APP_NAME"
echo "WAR path: $WAR_PATH"

service jetty stop
rm -rf /opt/jetty/webapps/$APP_NAME*
mv $WAR_PATH /opt/jetty/webapps/
service jetty start
