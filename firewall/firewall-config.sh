#!/bin/sh
#
# Created by: Alexandre Servoz
# Version: 1.0

# Declartion of global vars
url="https://raw.github.com/moolsbytheway/srvscript/master"
txtrst=$(tput sgr0) 	 # Text reset
txtred=$(tput setaf 1)   # Red
txtgreen=$(tput setaf 2) # Green

wget -q $url/firewall/firewall.sh --no-check-certificate
if [ $? -ne 0 ]
then echo -e "Download firewall script\t ${txtred}[ERROR]${txtrst}"
else
	chmod +x firewall.sh
	mv firewall.sh /etc/network/firewall
	/etc/network/firewall
	echo -e "Firewall configuration\t${txtgreen}[OK]${txtrst}"
fi

wget -q $url/firewall/fwcmd.sh --no-check-certificate
if [ $? -ne 0 ]
then echo -e "Download fwcmd script\t ${txtred}[ERROR]${txtrst}"
else
	chmod +x fwcmd.sh
	mv fwcmd.sh /etc/network/fwcmd
	/etc/network/fwcmd
	echo -e "Firewall cmd\t${txtgreen}[OK]${txtrst}"
fi
