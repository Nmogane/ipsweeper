#!/bin/bash

if [ "$1" == "" ]
then
	echo "insert an Ip addess !"
	echo "Syntax: ./ipsweep.sh 192.168.137 "

else
	echo "Contactable Ip's on network:"
	for ip in `seq 1 254`; do
		ping -c 1 $1.$ip | grep "64 bytes" |cut -d " " -f4 | tr -d ":" &
	done
fi



