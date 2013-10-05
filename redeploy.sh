#!/bin/sh
# parameters
APPNAME=$1

# config
export BASE_PATH="/home/trenders/autodeploy"
export APP_PATH="$BASE_PATH/conf/$APPNAME"
export TEMP_PATH="$APP_PATH/temp"

# go to the directory, create a directory for temporary files
rm -rf $TEMP_PATH

cd $APP_PATH
mkdir -p $TEMP_PATH

# call the appropriate helper script for the app
$APP_PATH/redeploy.sh

# clean up
rm -rf $TEMP_PATH
