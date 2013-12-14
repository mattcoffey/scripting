#!/bin/bash
#===============================================================================
#
#          FILE:  apt-bash-support.sh
# 
#         USAGE:  ./apt-bash-support.sh 
# 
#   DESCRIPTION: Install wget, unzip, vim and Bash Support Plugin 
#   See http://www.thegeekstuff.com/2009/02/make-vim-as-your-bash-ide-using-apt-bash-support-plugin/
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
sudo apt-get install vim <<EOF
yes
EOF
sudo apt-get install wget <<EOF
yes
EOF
sudo apt-get install unzip <<EOF
yes
EOF

#Run the generic bash-support.sh
bash bash-support.sh
