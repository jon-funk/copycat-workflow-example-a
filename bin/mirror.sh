#!/bin/sh
#========================================================================#
# Github repo Directory Mirror
# Synopsis: Script used to push local directory to remote repo (mirror)
# ARGUMENTS
REMOTE_TOKEN=${1}
SRC_DIR=${2}
DEST_DIR=${3}
#========================================================================#

git remote add ops git@github.com:jon-funk/copycat-workflow-example-b.git
git fetch ops
git checkout ops/mirror
rsync -avu --delete "$SRC_DIR" "$DEST_DIR"
git add 




