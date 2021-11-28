#!/bin/sh
#========================================================================#
# Github repo Directory Mirror
# Synopsis: Script used to push local directory to remote repo (mirror)
# ARGUMENTS
REMOTE_URL=${1}
REMOTE_TOKEN=${2}
SRC_DIR=${3}
DEST_DIR=${4}
MSG=${5}
#========================================================================#

git remote add ops $REMOTE_URL
git fetch ops
git checkout ops/main mirror

rsync -avu --delete "$SRC_DIR" "$DEST_DIR"
git checkout ops/main
git add $DEST_DIR
git commit -m "$MSG"
git push ops HEAD:main