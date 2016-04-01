#!/bin/bash
#===============================================================================
#
#          FILE:  fakesmtp.sh
# 
#         USAGE:  ./fakesmtp.sh 
# 
#   DESCRIPTION:  Set up fake SMTP email listener
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  Requires Java
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Matt Coffey (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  04/01/16 13:26:59 BST
#      REVISION:  ---
#===============================================================================

wget http://nilhcem.github.com/FakeSMTP/downloads/fakeSMTP-latest.zip -O - >> /tmp/fakeSMTP-latest.zip 
unzip /tmp/fakeSMTP-latest.zip 
java -jar fakeSMTP-2.0.jar
