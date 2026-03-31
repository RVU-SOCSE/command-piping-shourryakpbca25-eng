#!/bin/bash

while true
 do
	echo "-----Command Piping Demo-----"
	echo "1.Count Files in directory"
	echo "2.search running processes"
	echo "3.show largest files"
	echo "4.exit"

read -p "Enter Choice " ch

case $ch in
	1)
		ls|wc -l
		;;
	2)
		read -p "Enter process name: " pname
		ps -ef|grep $pname
		;;
	3)
		du -ah|sort -rh|head -5
		;;
	4)
		exit
		;;
	*)
		echo "Invalid choice "
		;;
	esac
done
