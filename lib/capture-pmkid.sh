
interface-check-1() {
    if [ -z $MAIN_INTERFACE1 ]
    then
    echo ""
    echo "Not an Option"
    sleep 2
    moniter-mode-1
    fi
}

interface-error-check-1() {
    if [ -z $MAIN_INTERFACE1 ]
    then
    echo ""
    echo "Error Network Adapter Not Found"
    sleep 2
    moniter-mode-1
    fi
}

moniter-mode-1() {
    clear
    figlet Capture PMKID
    echo -------------------- Choose a Network Adapter --------------------
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
    moniter-mode-1
    
    elif [ $INTERFACE == 1 ]
    then
    MAIN_INTERFACE1=${interface[0]}
    interface-check-1
    echo ""
    echo ""
    echo "Network Adapter chnaged to Moniter Mode"

    elif [ $INTERFACE == 2 ]
    then
    MAIN_INTERFACE1=${interface[1]}
    interface-check-1
    echo ""
    echo ""
    echo "Network Adapter chnaged to Moniter Mode"

    elif [ $INTERFACE == 3 ]
    then
    MAIN_INTERFACE1=${interface[2]}
    interface-check-1
    echo ""
    echo ""
    echo "Network Adapter chnaged to Moniter Mode"

    elif [ $INTERFACE == 4 ]
    then
    MAIN_INTERFACE1=${interface[3]}
    interface-check-1
    echo ""
    echo ""
    echo "Network Adapter chnaged to Moniter Mode"

    elif [ $INTERFACE == 5 ]
    then
    MAIN_INTERFACE1=${interface[4]}
    interface-check-1
    echo ""
    echo ""
    echo "Network Adapter chnaged to Moniter Mode"

    elif [ $INTERFACE == 6 ]
    then
    MAIN_INTERFACE1=${interface[5]}
    interface-check-1
    echo ""
    echo ""
    echo "Network Adapter chnaged to Moniter Mode"

    elif [ $INTERFACE == 7 ]
    then
    MAIN_INTERFACE1=${interface[6]}
    interface-check-1
    echo ""
    echo ""
    echo "Network Adapter chnaged to Moniter Mode"

    elif [ $INTERFACE == 8 ]
    then
    MAIN_INTERFACE1=${interface[7]}
    interface-check-1
    echo ""
    echo ""
    echo "Network Adapter chnaged to Moniter Mode"

    elif [ $INTERFACE == 9 ]
    then
    MAIN_INTERFACE1=${interface[8]}
    interface-check-1
    echo ""
    echo ""
    echo "Network Adapter chnaged to Moniter Mode"

    elif [ $INTERFACE == 0 ]
    then
    main-choice-1

    else
    echo ""
    echo ""
    echo "Not an Option"
    sleep 2
    moniter-mode-1
    fi

    interface-error-check-1

    ifconfig $MAIN_INTERFACE1 down
    iwconfig $MAIN_INTERFACE1 mode moniter
    ifconfig $MAIN_INTERFACE1 up
}

show-scan-results-1() {
    clear
    figlet Capture PMKID
    echo --------------------- Choose a Target Network ---------------------
    echo ""

    if [ ! -z ${NAME[0]} ]
    then
    echo "1)${NAME[0]}"
    else
    echo ""
    echo "No Networks Detected!"
    sleep 2
    main-choice-1
    fi
    if [ ! -z ${NAME[1]} ]
    then
    echo "2)${NAME[1]}"
    fi
    if [ ! -z ${NAME[2]} ]
    then
    echo "3)${NAME[2]}"
    fi
    if [ ! -z ${NAME[3]} ]
    then
    echo "4)${NAME[3]}"
    fi
    if [ ! -z ${NAME[4]} ]
    then
    echo "5)${NAME[4]}"
    fi
    if [ ! -z ${NAME[5]} ]
    then
    echo "6)${NAME[5]}"
    fi
    if [ ! -z ${NAME[6]} ]
    then
    echo "7)${NAME[6]}"
    fi
    if [ ! -z ${NAME[7]} ]
    then
    echo "8)${NAME[7]}"
    fi
    if [ ! -z ${NAME[8]} ]
    then
    echo "9)${NAME[8]}"
    fi
    if [ ! -z ${NAME[9]} ]
    then
    echo "a)${NAME[9]}"
    fi
    if [ ! -z ${NAME[10]} ]
    then
    echo "b)${NAME[10]}"
    fi
    if [ ! -z ${NAME[11]} ]
    then
    echo "c)${NAME[11]}"
    fi
    if [ ! -z ${NAME[12]} ]
    then
    echo "d)${NAME[12]}"
    fi
    if [ ! -z ${NAME[13]} ]
    then
    echo "e)${NAME[13]}"
    fi
    if [ ! -z ${NAME[14]} ]
    then
    echo "f)${NAME[14]}"
    fi
    if [ ! -z ${NAME[15]} ]
    then
    echo "g)${NAME[15]}"
    fi
    if [ ! -z ${NAME[16]} ]
    then
    echo "h)${NAME[16]}"
    fi
    if [ ! -z ${NAME[17]} ]
    then
    echo "i)${NAME[17]}"
    fi
    if [ ! -z ${NAME[18]} ]
    then
    echo "j)${NAME[18]}"
    fi
    if [ ! -z ${NAME[19]} ]
    then
    echo "k)${NAME[19]}"
    fi
    echo ""
    echo "0) Exit"
    echo ""
    read -n 1 -p "Select Option: " SCAN1
    if [ -z $SCAN1 ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    show-scan-results-1

    elif [ $SCAN1 == 1 ]
    then
    CHOSEN_SCAN=${NAME[0]}
    CHANNEL1=${CH1[0]}
    elif [ $SCAN1 == 2 ]
    then
    CHOSEN_SCAN=${NAME[1]}
    CHANNEL1=${CH1[1]}
    elif [ $SCAN1 == 3 ]
    then
    CHOSEN_SCAN=${NAME[2]}
    CHANNEL1=${CH1[2]}
    elif [ $SCAN1 == 4 ]
    then
    CHOSEN_SCAN=${NAME[3]}
    CHANNEL1=${CH1[3]}
    elif [ $SCAN1 == 5 ]
    then
    CHOSEN_SCAN=${NAME[4]}
    CHANNEL1=${CH1[4]}
    elif [ $SCAN1 == 6 ]
    then
    CHOSEN_SCAN=${NAME[5]}
    CHANNEL1=${CH1[5]}
    elif [ $SCAN1 == 7 ]
    then
    CHOSEN_SCAN=${NAME[6]}
    CHANNEL1=${CH1[6]}
    elif [ $SCAN1 == 8 ]
    then
    CHOSEN_SCAN=${NAME[7]}
    CHANNEL1=${CH1[7]}
    elif [ $SCAN1 == 9 ]
    then
    CHOSEN_SCAN=${NAME[8]}
    CHANNEL1=${CH1[8]}
    elif [ $SCAN1 == a ]
    then
    CHOSEN_SCAN=${NAME[9]}
    CHANNEL1=${CH1[9]}
    elif [ $SCAN1 == b ]
    then
    CHOSEN_SCAN=${NAME[10]}
    CHANNEL1=${CH1[10]}
    elif [ $SCAN1 == c ]
    then
    CHOSEN_SCAN=${NAME[11]}
    CHANNEL1=${CH1[11]}
    elif [ $SCAN1 == d ]
    then
    CHOSEN_SCAN=${NAME[12]}
    CHANNEL1=${CH1[12]}
    elif [ $SCAN1 == e ]
    then
    CHOSEN_SCAN=${NAME[13]}
    CHANNEL1=${CH1[13]}
    elif [ $SCAN1 == f ]
    then
    CHOSEN_SCAN=${NAME[14]}
    CHANNEL1=${CH1[14]}
    elif [ $SCAN1 == g ]
    then
    CHOSEN_SCAN=${NAME[15]}
    CHANNEL1=${CH1[15]}
    elif [ $SCAN1 == h ]
    then
    CHOSEN_SCAN=${NAME[16]}
    CHANNEL1=${CH1[16]}
    elif [ $SCAN1 == i ]
    then
    CHOSEN_SCAN=${NAME[17]}
    CHANNEL1=${CH1[17]}
    elif [ $SCAN1 == j ]
    then
    CHOSEN_SCAN=${NAME[18]}
    CHANNEL1=${CH1[18]}
    elif [ $SCAN1 == k ]
    then
    CHOSEN_SCAN=${NAME[19]}
    CHANNEL1=${CH1[19]}
    elif [ $SCAN1 == 0 ]
    then
    rm temp.txt
    rm channel.txt
    main-choice-1

    else
    echo ""
    echo ""
    echo "Not and Option"
    show-scan-results-1
    fi

    if [ -z $CHOSEN_SCAN ]
    then
    echo ""
    echo ""
    echo "Not an Option"
    sleep 2
    show-scan-results-1
    fi

}

network-scan-1() {
    echo ""
    echo "During the scan press "CTRL + C" to stop"
    read -n 1 -s -r -p "Press any button to begin scan..."

    airodump-ng -w temp1 --output-format csv "$MAIN_INTERFACE1"
    cat temp1-01.csv | grep "WPA2" > temp.txt
    cat temp.txt | cut -d',' -f14 > names.txt
    rm temp1-01.csv

    cat temp.txt | cut -d',' -f4 > channel.txt
    mapfile -t CH1 <channel.txt
    mapfile -t NAME <names.txt
    rm names.txt
    rm temp.txt
    rm channel.txt

    show-scan-results-1
}

