#!/bin/sh
#
# Created by: Alexandre Servoz
# Version: 1.0

# Declaration of global vars
url="https://raw.github.com/moolsbytheway/srvscript/master"
txtrst=$(tput sgr0) 	 # Text reset
txtred=$(tput setaf 1)   # Red
txtgreen=$(tput setaf 2) # Green

cp /etc/vim/vimrc /etc/vim/vimrc.bck
sed -i 's/"syntax on/syntax on/g' /etc/vim/vimrc
echo "set number" >> /etc/vim/vimrc
echo -e "Update vim configuration \t ${txtgreen}[OK]${txtrst}"