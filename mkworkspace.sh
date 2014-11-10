#!/bin/bash
#===============================================================================
#
#          FILE:  mkworkspace.sh
# 
#         USAGE:  ./mkworkspace.sh 
# 
#   DESCRIPTION: Semi automated Eclipse Workspace and quick launcher creation
#                In order to launch from Alfred needs to run from app compiled 
#                Apple script.
#                Apple script runs Bash script in the background which provides 
#                the workspace specific arguments.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Matt Coffey (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  11/10/14 15:43:27 GMT
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
    echo "Invocation mkworkspace.sh -w [workspace]"
    echo "[workspace] can't be 'template' or 's'"
    exit 1;
fi

# Remove any existing files

~/bin/rmworkspace.sh -w "$WORKSPACE"

# Create script to open workspace

TEMPLATE_PATH="$HOME/workspaces/template"
BASE_PATH="$HOME/workspaces"
WORKSPACE_PATH="$BASE_PATH/$WORKSPACE"
BASH_PATH="$BASE_PATH/s/$WORKSPACE.sh"
APPLE_PATH="$BASE_PATH/s/$WORKSPACE.scpt"

echo "#!/bin/bash" > "$BASH_PATH"
echo "/Applications/eclipse/Eclipse.app/Contents/MacOS/eclipse -showlocation -data $WORKSPACE_PATH -vmargs -Xms2048m -Xmx4096m -XX:MaxPermSize=2048M" >> "$BASH_PATH"

chmod +x "$BASH_PATH"

# Create workspace

mkdir "$WORKSPACE_PATH"

cp -rp "$TEMPLATE_PATH/.metadata/" "$WORKSPACE_PATH/.metadata/"

# Create AppleScript file and provide instructions for Save As

echo "do shell script \"$BASH_PATH > /dev/null 2>&1 &\"" > "$APPLE_PATH"

# Provide instructions for Save As

echo "Hold File -> (Hold ALT) Save As"
echo "uncheck Show startup screen"
echo "uncheck Stay open after run handler"
echo "File Format Application"
echo "Save As /Applications/[workspace].app"
echo "Click Save"
echo "To run from Alfred type $WORKSPACE"

# Open AppleScript Editor

open /Applications/Utilities/AppleScript\ Editor.app "$APPLE_PATH"
