#!/bin/bash
APP_NAME=$1
WAR_PATH=$2

echo "App name: $APP_NAME"
echo "WAR path: $WAR_PATH"

stop-jetty
rm -rf /home/trenders/jetty/current/webapps/*
mv $WAR_PATH /home/trenders/jetty/current/webapps/
start-jetty
