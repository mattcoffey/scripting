#!/bin/bash
#===============================================================================
#
#          FILE:  kde-solarized.sh
# 
#         USAGE:  ./kde-solarized.sh 
# 
#   DESCRIPTION:  Automate most of adding solarized to KDE system for use with
#                 Kate and Konsole etc...
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Matt Coffey (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  14/12/13 00:40:37 GMT
#      REVISION:  ---
#===============================================================================

wget -P /tmp https://github.com/hayalci/kde-colors-solarized/zipball/master 
unzip /tmp/master -d /tmp
cd /tmp/hayalci-kde-colors-solarized-6c4f155/
bash install.sh
less /tmp/hayalci-kde-colors-solarized-6c4f155/README.md
