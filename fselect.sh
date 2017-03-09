#!/bin/bash 
clear
echo
echo -e "\t\t\tSys Adimin Menu\n"
echo -e "\t1. Display disk space"
echo -e "\t2. Display logged on users"
echo -e "\t3. Display memory usage"
echo -e "\t0. Exit program\n\n"
echo -en "\t\t. Enter option: "
read -n 1 option

case $option in
0)
	brak;;
1)
	diskspace;;
2)
	whoseon;;
3)
	memusage;;
*)
	clear
	echo "sorry ,wrong selection";;
esac

