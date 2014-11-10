#!/bin/bash
#===============================================================================
#
#          FILE:  osx-bash-support.sh
# 
#         USAGE:  ./osx-bash-support.sh 
# 
#   DESCRIPTION: Alias wget and install Bash Support Plugin 
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
#       CREATED:  03/14/2014 10:02:50 PM UTC
#      REVISION:  ---
#===============================================================================

#Install wget
origin=${PWD}
cd /tmp
curl -O http://ftp.gnu.org/gnu/wget/wget-1.14.tar.gz
tar xvf wget-1.14.tar.gz
cd wget-1.14
./configure --with-ssl=openssl
make
sudo make install
cd ${origin}

#Run the generic bash-support.sh
bash vim-bash-support.sh
