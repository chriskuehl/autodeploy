#!/bin/sh
cd $CLONE_PATH && /usr/bin/git fetch
/usr/bin/git clone $CLONE_PATH "$TEMP_PATH"
