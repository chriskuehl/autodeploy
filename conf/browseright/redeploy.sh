#!/bin/sh
# Set the necessary variables
export CLONE_PATH="/home/browseright/browseright/repos/browseright/"

$BASE_PATH/git-co.sh

# build with Grails
export GRAILS_OPTS="-Xms64M"
cd $TEMP_PATH/src/server/BrowseRight/
grails war root.war

# go back to app path just in case
cd $APP_PATH

# send to Jetty
$BASE_PATH/jetty-redeploy.sh root "$TEMP_PATH/src/server/BrowseRight/root.war"
