#!/bin/bash
#===============================================================================
#
#          FILE:  rmworkspace.sh
# 
#         USAGE:  ./rmworkspace.sh 
# 
#   DESCRIPTION:  Remove files relating to an Eclipse workspace
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Matt Coffey (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  11/10/14 19:50:04 GMT
#      REVISION:  ---
#===============================================================================

while getopts w: option 
do 
        case "${option}" 
        in 
                w) WORKSPACE=${OPTARG};; 
        esac 
done 

# Exit if the argument is absent
if [[ -z $WORKSPACE || 'template' == $WORKSPACE || 's' == $WORKSPACE ]] ; then
    echo "Invocation rmworkspace.sh -w [workspace]"
    echo "[workspace] can't be 'template' or 's'"
    exit 1;
fi

BASE_PATH="$HOME/workspaces"
WORKSPACE_PATH="$BASE_PATH/$WORKSPACE"
BASH_PATH="$BASE_PATH/s/$WORKSPACE.sh"
APPLE_PATH="$BASE_PATH/s/$WORKSPACE.scpt"

rm -rf "$WORKSPACE_PATH" "$BASH_PATH" "$APPLE_PATH"

echo "Removed workspace $WORKSPACE"
