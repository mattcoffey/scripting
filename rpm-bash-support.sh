#!/bin/bash
#===============================================================================
#
#          FILE:  rpm-bash-support.sh
# 
#         USAGE:  ./rpm-bash-support.sh 
# 
#   DESCRIPTION: Install wget, unzip, vim and Bash Support Plugin 
#   See http://www.thegeekstuff.com/2009/02/make-vim-as-your-bash-ide-using-rpm-bash-support-plugin/
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  Use \sfu to create a new function, use \cfu to create comments
#    \sc case in . esac
#    \sl elif then
#    \sf for in do done
#    \sfo for ((.)) do done
#    \si if then fi
#    \sie if then else fi
#    \ss select in do done
#    \st until do done
#    \sw while do done
#    \sfu function
#    \se echo ­e "\n"
#    \sp printf "\n"
#        AUTHOR:  Matt Coffey (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  08/14/2013 10:02:50 PM UTC
#      REVISION:  ---
#===============================================================================

#Install vim, wget and unzip
sudo yum install vim <<EOF
yes
EOF
sudo yum install wget <<EOF
yes
EOF
sudo yum install unzip <<EOF
yes
EOF

#Run the generic bash-support.sh
bash bash-support.sh
