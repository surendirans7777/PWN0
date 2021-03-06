#!/bin/bash

function menu {
#colors
red=`tput setaf 1`
reset=`tput sgr0`
	clear
	echo
	echo -e "\t\t\t${red}
 ===============================
| 		 		|
| ______ _    _ _   _ _____ 	|
| | ___ \ |  | | \ | |  _  |	|
| | |_/ / |  | |  \| | |/| |	|
| |  __/| |/\| | . | | | | |	|
| | |   \  /\  | |\  \ |_/ /	|
| \_|    \/  \/\_| \_/\___/ 	|
|                               |
 ===============================

${reset}\n"
	echo -e "\t1. Subdomain enumeration"
	echo -e "\t2. Sorting alive subdomains and Visual Recon"
	echo -e "\t3. Parameter Mining"
	echo -e "\t4. Nuclei"
	echo -e "\t0. Exit Menu\n\n"
	echo -en "\t\tEnter an Option: "
	read -n 1 option
}

function subenum {
	clear
        bash src/subenum.sh
}

function paramining {
	clear
	bash src/paramining.sh
}

function visualrecon {
	clear
	bash src/visual_recon.sh
}

function nucleicall {
	clear
	bash src/nucleicall.sh
}


while [ 1 ]
do
	menu
	case $option in
	0)
	break ;;
	1)
	subenum ;;

	2)
	visualrecon ;;
	
	3)
	paramining ;;
	
	4)
	nucleicall ;;

	*)
	clear
	echo "Wrong selection";;
	esac
	echo -en "\n\n\t\t\tHit any key to continue"
	read -n 1 line
done
clear
