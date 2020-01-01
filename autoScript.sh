#!/usr/bin/env bash

source "lib/main-lib.sh"

interface-check() {
    if [ -z $INTERFACE ]
    then
    echo ""
    echo ""
    echo "Not an Option"
    sleep 2
    moniter-mode
    fi
}

interface-error-check() {
    if [ -z $INTERFACE ]
    then
    echo ""
    echo "Error Network Adapter Not Found"
    sleep 2
    moniter-mode
    fi
}

moniter-mode() {
    clear
    figlet WiFi  Interface
    echo -e "\e[0;36m---------------------\e[0m \e[1;33mChoose a Network Adapter\e[0m \e[0;36m---------------------\e[0m"
    echo ""
    echo -e "\e[1;31mWARNING:\e[0m Try and avoid using wlan0"
    iwconfig > temp.txt 2>/dev/null
    cat temp.txt | grep "IEEE" | cut -d' ' -f1 > iwconfig.txt
    mapfile -t interface <iwconfig.txt
    rm temp.txt
    rm iwconfig.txt
    echo ""
    if [ ! -z ${interface[0]} ]
    then
    echo "1) ${interface[0]}"
    else
    echo ""
    echo "No Network Adapters Found!"
    sleep 2
    main-choice-1
    fi
    if [ ! -z ${interface[1]} ]
    then
    echo "2) ${interface[1]}"
    fi
    if [ ! -z ${interface[2]} ]
    then
    echo "3) ${interface[2]}"
    fi
    if [ ! -z ${interface[3]} ]
    then
    echo "4) ${interface[3]}"
    fi
    if [ ! -z ${interface[4]} ]
    then
    echo "5) ${interface[4]}"
    fi
    if [ ! -z ${interface[5]} ]
    then
    echo "6) ${interface[5]}"
    fi
    if [ ! -z ${interface[6]} ]
    then
    echo "7) ${interface[6]}"
    fi
    if [ ! -z ${interface[7]} ]
    then
    echo "8) ${interface[7]}"
    fi
    if [ ! -z ${interface[8]} ]
    then
    echo "9) ${interface[8]}"
    fi
    echo ""
    echo "0) Exit"
    echo ""
    read -n 1 -p "Select Option: " INTERFACE
    if [ -z $INTERFACE ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    moniter-mode
    
    elif [ $INTERFACE == 1 ]
    then
    INTERFACE=${interface[0]}
    interface-check

    elif [ $INTERFACE == 2 ]
    then
    INTERFACE=${interface[1]}
    interface-check

    elif [ $INTERFACE == 3 ]
    then
    INTERFACE=${interface[2]}
    interface-check

    elif [ $INTERFACE == 4 ]
    then
    INTERFACE=${interface[3]}
    interface-check

    elif [ $INTERFACE == 5 ]
    then
    INTERFACE=${interface[4]}
    interface-check

    elif [ $INTERFACE == 6 ]
    then
    INTERFACE=${interface[5]}
    interface-check

    elif [ $INTERFACE == 7 ]
    then
    INTERFACE=${interface[6]}
    interface-check

    elif [ $INTERFACE == 8 ]
    then
    INTERFACE=${interface[7]}
    interface-check

    elif [ $INTERFACE == 9 ]
    then
    INTERFACE=${interface[8]}
    interface-check

    elif [ $INTERFACE == 0 ]
    then
    clear
    exit

    else
    echo ""
    echo ""
    echo "Not an Option"
    sleep 2
    moniter-mode
    fi

    interface-error-check

    ifconfig $INTERFACE down
    iwconfig $INTERFACE mode moniter
    ifconfig $INTERFACE up
}

main-menue() {
heading
echo -e "\e[0;36m---------------\e[0m \e[1;33mMade by Treebug842\e[0m \e[0;36m---------------\e[0m"
echo ""
echo "1) WiFi Cracking"
echo "2) Network Recon"
echo "3) Griefing"
echo "4) Other Programs"
echo "5) Exit"
echo ""
read -n 1 -p "Select Option: " MAIN
if [ -z $MAIN ]
then
echo ""
echo "Cannot leave blank"
sleep 2
exec bash "$0" "$@"

elif [ $MAIN == 1 ]
then
main-choice-1

elif [ $MAIN == 2 ]
then
main-choice-2

elif [ $MAIN == 3 ]
then
main-choice-3

elif [ $MAIN == 4 ]
then
main-choice-4

elif [ $MAIN == 5 ]
then
clear
exit

else
echo ""
echo ""
echo "Not an Option"
sleep 2
exec bash "$0" "$@"
fi
}

moniter-mode
main-menue