#!/bin/bash
#===============================================================================
#
#          FILE:  parallel-centos5.sh
# 
#         USAGE:  ./parallel-centos5.sh 
# 
#   DESCRIPTION:  Install GNU Parallel on CentOS 5
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Matt Coffey (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  01/15/2014 10:28:17 AM GMT
#      REVISION:  ---
#===============================================================================

cd /etc/yum.repos.d/
wget http://download.opensuse.org/repositories/home:tange/CentOS_CentOS-5/home:tange.repo
yum install parallel <<EOF
y
y
EOF
