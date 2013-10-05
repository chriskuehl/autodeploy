#!/bin/bash
APP_NAME=$1
WAR_PATH=$2

echo "App name: $APP_NAME"
echo "WAR path: $WAR_PATH"

# user / password / server sanitized prior to public release
URL="https://user:password@server/manager/text"

curl -ks "$URL/undeploy?path=/$APP_NAME"
sudo /etc/init.d/tomcat7 restart
sleep 5

# upload the new WAR via curl
curl -ks "$URL/deploy?path=/$APP_NAME&war=file:/$WAR_PATH"
