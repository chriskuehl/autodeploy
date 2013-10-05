#!/bin/sh
# Set the necessary variables
export CLONE_PATH="/home/trenders/repos/trenders.org/"

$BASE_PATH/git-co.sh

# build with Grails
export GRAILS_OPTS="-Xms64M"
cd $TEMP_PATH/src/server
grails war root.war

# go back to app path just in case
cd $APP_PATH

# send to Jetty
$BASE_PATH/jetty-redeploy.sh root "$TEMP_PATH/src/server/root.war"
