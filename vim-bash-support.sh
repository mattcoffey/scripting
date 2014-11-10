#!/bin/bash
#===============================================================================
#
#          FILE:  vim-bash-support.sh
# 
#         USAGE:  ./vim-bash-support.sh 
# 
#   DESCRIPTION: Install Bash Support Plugin 
#   See http://www.thegeekstuff.com/2009/02/make-vim-as-your-bash-ide-using-vim-bash-support-plugin/
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

#Download plugin and unzip into .vim directory
mkdir ~/.vim 
wget http://www.vim.org/scripts/download_script.php?src_id=9890 -O - >> /tmp/bash-support.zip
unzip /tmp/bash-support.zip -d ~/.vim

#Set up ~/.vimrc
echo '" Bash support plugin'  >> ~/.vimrc
echo "filetype plugin on" >> ~/.vimrc
echo "let g:BASH_AuthorName   = 'Matt Coffey'" >> ~/.vimrc
echo "let g:BASH_Email        = ''" >> ~/.vimrc
echo "let g:BASH_Company      = ''" >> ~/.vimrc
echo ""  >> ~/.vimrc
echo '" Syntax highlighting on'  >> ~/.vimrc
echo "syntax on"  >> ~/.vimrc
echo ""  >> ~/.vimrc
echo '" Allow pasting blocks of code'  >> ~/.vimrc
echo "set paste"  >> ~/.vimrc
echo ""  >> ~/.vimrc
echo '" Tabs for spaces'  >> ~/.vimrc
echo "set expandtab"  >> ~/.vimrc
echo "set tabstop=4"  >> ~/.vimrc
