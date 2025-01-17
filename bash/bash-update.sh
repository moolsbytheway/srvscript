#!/bin/sh
#
# Created by: Alexandre Servoz
# Version: 1.0

# Declartion of global vars
url="https://raw.github.com/moolsbytheway/srvscript/master"
txtrst=$(tput sgr0) 	 # Text reset
txtred=$(tput setaf 1)   # Red
txtgreen=$(tput setaf 2) # Green

cp ~/.bashrc ~/.bashrc.bck
sed -i 's/# export LS_OPTIONS/export LS_OPTIONS/g' /root/.bashrc
sed -i 's/# eval/eval/g' /root/.bashrc
sed -i 's/# alias ls/alias ls/g' /root/.bashrc
sed -i 's/# alias ll/alias ll/g' /root/.bashrc
sed -i 's/# alias l/alias l/g' /root/.bashrc
source ~/.bashrc
echo -e "Update bash configuration \t ${txtgreen}[OK]${txtrst}"