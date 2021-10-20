#!/bin/bash

echo 	'			*********DEVELOPED BY*********'
echo 	'			┌┬┐┌─┐┌─┐┌─┐┬ ┬┌─┐┌┐┌┌─┐┌─┐┬─┐'
echo 	'			│││├─┤│  │  ├─┤├─┤││││ ┬├┤ ├┬┘'
echo 	'			┴ ┴┴ ┴└─┘└─┘┴ ┴┴ ┴┘└┘└─┘└─┘┴└─'
echo 	'			***********BHANUGOUD**********'
echo 	'********************************** DISCLAIMER *********************************************'
echo 	'Developed for educational purpose only dont miss use this tool we are not resposible if any'
#taking inputs
echo '###################################    YOUR ARE CHANGING YOUR MAC ADDRESS    #########################################';
echo 'Do you want to change your MAC address agree to the diclaimer & conditions : 1.YES 2.NO'
read VAR0
A="$VAR0"
if [ "$A" == 1 ] ||[ "$A" == YES ] || [[ "$A" == yes ]];
then
	macchanger > king.txt
	a="$(cat king.txt | grep Usage)"
	if [ -z "$a" ]
		then
     		sudo apt install macchanger
		rm -rf king.txt
		echo "please run the script one more time as root or sudo user"
	else
		echo 'Enter the interface name (Plze enter a correct interface name [ Ex:- wlan0,etho,wlan1  ] ) ====>>>';
		read VAR
		J=$VAR
		echo 'A new MAC address you want give ( it is in the format [ Ex:-XX:XX:XX:XX:XX:XX ] ) =====>>>';
		read VAR2
		K=$VAR2
		#final proceeding to chnage mac
		ifconfig $J down
		echo 'Changing your MAC address.......'
		sleep 2
		macchanger -m $K  $J
		clear
		ifconfig $J up
		sleep 2
		ifconfig
		echo "***********************************  you changed your MAC address to this new mac address $K  succesfully  *************************************";
		rm -rf king.txt
		fi
else
echo 'Exiting from the MAC changer....'
fi;
