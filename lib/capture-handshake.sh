
interface-check-2() {
    if [ -z $MAIN_INTERFACE2 ]
    then
    echo ""
    echo ""
    echo "Not an Option"
    sleep 2
    moniter-mode-2
    fi
}

interface-error-check-2() {
    if [ -z $MAIN_INTERFACE2 ]
    then
    echo ""
    echo "Error Network Adapter Not Found"
    sleep 2
    moniter-mode-2
    fi
}

moniter-mode-2() {
    clear
    figlet Capture Handshake
    echo ----------------------- Choose a Network Adapter -----------------------
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
    moniter-mode-2
    
    elif [ $INTERFACE == 1 ]
    then
    MAIN_INTERFACE2=${interface[0]}
    interface-check-2
    echo ""
    echo ""
    echo "Network Adapter chnaged to Moniter Mode"

    elif [ $INTERFACE == 2 ]
    then
    MAIN_INTERFACE2=${interface[1]}
    interface-check-2
    echo ""
    echo ""
    echo "Network Adapter chnaged to Moniter Mode"

    elif [ $INTERFACE == 3 ]
    then
    MAIN_INTERFACE2=${interface[2]}
    interface-check-2
    echo ""
    echo ""
    echo "Network Adapter chnaged to Moniter Mode"

    elif [ $INTERFACE == 4 ]
    then
    MAIN_INTERFACE2=${interface[3]}
    interface-check-2
    echo ""
    echo ""
    echo "Network Adapter chnaged to Moniter Mode"

    elif [ $INTERFACE == 5 ]
    then
    MAIN_INTERFACE2=${interface[4]}
    interface-check-2
    echo ""
    echo ""
    echo "Network Adapter chnaged to Moniter Mode"

    elif [ $INTERFACE == 6 ]
    then
    MAIN_INTERFACE2=${interface[5]}
    interface-check-2
    echo ""
    echo ""
    echo "Network Adapter chnaged to Moniter Mode"

    elif [ $INTERFACE == 7 ]
    then
    MAIN_INTERFACE2=${interface[6]}
    interface-check-2
    echo ""
    echo ""
    echo "Network Adapter chnaged to Moniter Mode"

    elif [ $INTERFACE == 8 ]
    then
    MAIN_INTERFACE2=${interface[7]}
    interface-check-2
    echo ""
    echo ""
    echo "Network Adapter chnaged to Moniter Mode"

    elif [ $INTERFACE == 9 ]
    then
    MAIN_INTERFACE2=${interface[8]}
    interface-check-2
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
    moniter-mode-2
    fi

    interface-error-check-2

    ifconfig $MAIN_INTERFACE2 down
    iwconfig $MAIN_INTERFACE2 mode moniter
    ifconfig $MAIN_INTERFACE2 up
}

show-scan-results-2() {
    clear
    figlet Capture Handshake
    echo ------------------------- Choose a Target Network --------------------------
    echo ""
    if [ -z ${NAME2[0]} ]
    then
    echo ""
    echo "No Networks Detected!"
    sleep 2
    main-choice-1
    else 
    echo "1)${NAME2[0]}"
    fi
    if [ ! -z ${NAME2[1]} ]
    then
    echo "2)${NAME2[1]}"
    fi
    if [ ! -z ${NAME2[2]} ]
    then
    echo "3)${NAME2[2]}"
    fi
    if [ ! -z ${NAME2[3]} ]
    then
    echo "4)${NAME2[3]}"
    fi
    if [ ! -z ${NAME2[4]} ]
    then
    echo "5)${NAME2[4]}"
    fi
    if [ ! -z ${NAME2[5]} ]
    then
    echo "6)${NAME2[5]}"
    fi
    if [ ! -z ${NAME2[6]} ]
    then
    echo "7)${NAME2[6]}"
    fi
    if [ ! -z ${NAME2[7]} ]
    then
    echo "8)${NAME2[7]}"
    fi
    if [ ! -z ${NAME2[8]} ]
    then
    echo "9)${NAME2[8]}"
    fi
    if [ ! -z ${NAME2[9]} ]
    then
    echo "a)${NAME2[9]}"
    fi
    if [ ! -z ${NAME2[10]} ]
    then
    echo "b)${NAME2[10]}"
    fi
    if [ ! -z ${NAME2[11]} ]
    then
    echo "c)${NAME2[11]}"
    fi
    if [ ! -z ${NAME2[12]} ]
    then
    echo "d)${NAME2[12]}"
    fi
    if [ ! -z ${NAME2[13]} ]
    then
    echo "e)${NAME2[13]}"
    fi
    if [ ! -z ${NAME2[14]} ]
    then
    echo "f)${NAME2[14]}"
    fi
    if [ ! -z ${NAME2[15]} ]
    then
    echo "g)${NAME2[15]}"
    fi
    if [ ! -z ${NAME2[16]} ]
    then
    echo "h)${NAME2[16]}"
    fi
    if [ ! -z ${NAME2[17]} ]
    then
    echo "i)${NAME2[17]}"
    fi
    if [ ! -z ${NAME2[18]} ]
    then
    echo "j)${NAME2[18]}"
    fi
    if [ ! -z ${NAME2[19]} ]
    then
    echo "k)${NAME2[19]}"
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
    show-scan-results-2

    elif [ $SCAN1 == 1 ]
    then
    CHOSEN_SCAN=${NAME2[0]}
    CHANNEL2=${CH2[0]}
    BSSID2=${BSS2[0]}
    elif [ $SCAN1 == 2 ]
    then
    CHOSEN_SCAN=${NAME2[1]}
    CHANNEL2=${CH2[1]}
    BSSID2=${BSS2[1]}
    elif [ $SCAN1 == 3 ]
    then
    CHOSEN_SCAN=${NAME2[2]}
    CHANNEL2=${CH2[2]}
    BSSID2=${BSS2[2]}
    elif [ $SCAN1 == 4 ]
    then
    CHOSEN_SCAN=${NAME2[3]}
    CHANNEL2=${CH2[3]}
    BSSID2=${BSS2[3]}
    elif [ $SCAN1 == 5 ]
    then
    CHOSEN_SCAN=${NAME2[4]}
    CHANNEL2=${CH2[4]}
    BSSID2=${BSS2[4]}
    elif [ $SCAN1 == 6 ]
    then
    CHOSEN_SCAN=${NAME2[5]}
    CHANNEL2=${CH2[5]}
    BSSID2=${BSS2[5]}
    elif [ $SCAN1 == 7 ]
    then
    CHOSEN_SCAN=${NAME2[6]}
    CHANNEL2=${CH2[6]}
    BSSID2=${BSS2[6]}
    elif [ $SCAN1 == 8 ]
    then
    CHOSEN_SCAN=${NAME2[7]}
    CHANNEL2=${CH2[7]}
    BSSID2=${BSS2[7]}
    elif [ $SCAN1 == 9 ]
    then
    CHOSEN_SCAN=${NAME2[8]}
    CHANNEL2=${CH2[8]}
    BSSID2=${BSS2[8]}
    elif [ $SCAN1 == a ]
    then
    CHOSEN_SCAN=${NAME2[9]}
    CHANNEL2=${CH1[9]}
    BSSID2=${BSS2[9]}
    elif [ $SCAN1 == b ]
    then
    CHOSEN_SCAN=${NAME2[10]}
    CHANNEL2=${CH1[10]}
    BSSID2=${BSS2[10]}
    elif [ $SCAN1 == c ]
    then
    CHOSEN_SCAN=${NAME2[11]}
    CHANNEL2=${CH1[11]}
    BSSID2=${BSS2[11]}
    elif [ $SCAN1 == d ]
    then
    CHOSEN_SCAN=${NAME2[12]}
    CHANNEL2=${CH1[12]}
    BSSID2=${BSS2[12]}
    elif [ $SCAN1 == e ]
    then
    CHOSEN_SCAN=${NAME2[13]}
    CHANNEL2=${CH1[13]}
    BSSID2=${BSS2[13]}
    elif [ $SCAN1 == f ]
    then
    CHOSEN_SCAN=${NAME2[14]}
    CHANNEL2=${CH1[14]}
    BSSID2=${BSS2[14]}
    elif [ $SCAN1 == g ]
    then
    CHOSEN_SCAN=${NAME2[15]}
    CHANNEL2=${CH1[15]}
    BSSID2=${BSS2[15]}
    elif [ $SCAN1 == h ]
    then
    CHOSEN_SCAN=${NAME2[16]}
    CHANNEL2=${CH1[16]}
    BSSID2=${BSS2[16]}
    elif [ $SCAN1 == i ]
    then
    CHOSEN_SCAN=${NAME2[17]}
    CHANNEL2=${CH1[17]}
    BSSID2=${BSS2[17]}
    elif [ $SCAN1 == j ]
    then
    CHOSEN_SCAN=${NAME2[18]}
    CHANNEL2=${CH1[18]}
    BSSID2=${BSS2[18]}
    elif [ $SCAN1 == k ]
    then
    CHOSEN_SCAN=${NAME2[19]}
    CHANNEL2=${CH1[19]}
    BSSID2=${BSS2[19]}
    elif [ $SCAN1 == 0 ]
    then
    rm temp.txt
    rm channel.txt
    main-choice-1
    
    elif [ $SCAN1 == 0 ]
    then
    rm temp.txt
    rm channel.txt
    main-choice-1

    else
    echo ""
    echo ""
    echo "Not and Option"
    show-scan-results-2
    fi

    if [ -z $CHOSEN_SCAN ]
    then
    echo ""
    echo ""
    echo "Not an Option"
    sleep 2
    show-scan-results-2
    fi
}

network-scan-2() {
    echo ""
    echo "During the scan press "CTRL + C" to stop"
    read -n 1 -s -r -p "Press any button to begin scan..."

    airodump-ng -w temp1 --output-format csv "$MAIN_INTERFACE2"

    cat temp1-01.csv | grep "WPA2" > temp.txt
    cat temp.txt | cut -d',' -f14 > names.txt
    cat temp.txt | cut -d',' -f4 > channel.txt
    cat temp.txt | cut -d',' -f1 > bssid.txt

    mapfile -t CH2 <channel.txt
    mapfile -t NAME2 <names.txt
    mapfile -t BSS2 <bssid.txt

    rm names.txt
    rm temp1-01.csv
    rm bssid.txt
    rm channel.txt
    rm temp.txt
    show-scan-results-2
}










