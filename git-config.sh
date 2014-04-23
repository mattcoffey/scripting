#!/bin/bash
#===============================================================================
#
#          FILE:  git-config.sh
# 
#         USAGE:  ./git-config.sh 
# 
#   DESCRIPTION: Set up Git
#                vim ~/.gitconfig
#                edit name and email
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Matt Coffey (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  14/12/13 00:50:50 GMT
#      REVISION:  ---
#===============================================================================

echo '[user]' > ~/.gitconfig
echo '    name = Matt Coffey' >> ~/.gitconfig
echo '    email = ' >> ~/.gitconfig
echo '[alias]' >> ~/.gitconfig
echo '    lol = log --graph --decorate --pretty=oneline --abbrev-commit' >> ~/.gitconfig
echo '    dc = diff --cached' >> ~/.gitconfig
echo '[credential]' >> ~/.gitconfig
echo '    helper = cache --timeout=' >> ~/.gitconfig
echo '[core]' >> ~/.gitconfig
echo '    editor = vim' >> ~/.gitconfig
echo '    page = less' >> ~/.gitconfig
echo '[push]' >> ~/.gitconfig
echo '    default = simple' >> ~/.gitconfig
echo '[color]' >> ~/.gitconfig
echo '    ui = auto' >> ~/.gitconfig
echo '[color "branch"]' >> ~/.gitconfig
echo '    current = yellow reverse' >> ~/.gitconfig
echo '    local = yellow' >> ~/.gitconfig
echo '    remote = green' >> ~/.gitconfig
echo '[color "diff"]' >> ~/.gitconfig
echo '    meta = yellow' >> ~/.gitconfig
echo '    frag = magenta' >> ~/.gitconfig
echo '    old = red' >> ~/.gitconfig
echo '    new = green' >> ~/.gitconfig
echo '[color "status"]' >> ~/.gitconfig
echo '    added = yellow' >> ~/.gitconfig
echo '    changed = green' >> ~/.gitconfig
echo '    untracked = cyan' >> ~/.gitconfig
