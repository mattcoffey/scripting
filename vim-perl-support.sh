#!/bin/bash
#===============================================================================
#
#          FILE:  vim-perl-support.sh
# 
#         USAGE:  ./vim-perl-support.sh 
# 
#   DESCRIPTION: Install Perl Support Plugin 
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Matt Coffey (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  03/17/14 16:44:35 GMT
#      REVISION:  ---
#===============================================================================

#Download plugin and unzip into .vim directory
mkdir ~/.vim 
wget http://www.vim.org/scripts/download_script.php?src_id=21048 -O - >> /tmp/perl-support.zip
unzip /tmp/perl-support.zip -d ~/.vim
