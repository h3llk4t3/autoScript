show-scan-results-3() {
    clear
    figlet Capture Packets
    echo "------------------------- Choose a Target Network --------------------------"
    echo ""
    if [ -z ${NAME3[0]} ]
    then
    echo ""
    echo "No Networks Detected!"
    sleep 2
    main-choice-2
    else 
    echo "1)${NAME3[0]}"
    fi
    if [ ! -z ${NAME3[1]} ]
    then
    echo "2)${NAME3[1]}"
    fi
    if [ ! -z ${NAME3[2]} ]
    then
    echo "3)${NAME3[2]}"
    fi
    if [ ! -z ${NAME3[3]} ]
    then
    echo "4)${NAME3[3]}"
    fi
    if [ ! -z ${NAME3[4]} ]
    then
    echo "5)${NAME3[4]}"
    fi
    if [ ! -z ${NAME3[5]} ]
    then
    echo "6)${NAME3[5]}"
    fi
    if [ ! -z ${NAME3[6]} ]
    then
    echo "7)${NAME3[6]}"
    fi
    if [ ! -z ${NAME3[7]} ]
    then
    echo "8)${NAME3[7]}"
    fi
    if [ ! -z ${NAME3[8]} ]
    then
    echo "9)${NAME3[8]}"
    fi
    if [ ! -z ${NAME3[9]} ]
    then
    echo "a)${NAME3[9]}"
    fi
    if [ ! -z ${NAME3[10]} ]
    then
    echo "b)${NAME3[10]}"
    fi
    if [ ! -z ${NAME3[11]} ]
    then
    echo "c)${NAME3[11]}"
    fi
    if [ ! -z ${NAME3[12]} ]
    then
    echo "d)${NAME3[12]}"
    fi
    if [ ! -z ${NAME3[13]} ]
    then
    echo "e)${NAME3[13]}"
    fi
    if [ ! -z ${NAME3[14]} ]
    then
    echo "f)${NAME3[14]}"
    fi
    if [ ! -z ${NAME3[15]} ]
    then
    echo "g)${NAME3[15]}"
    fi
    if [ ! -z ${NAME3[16]} ]
    then
    echo "h)${NAME3[16]}"
    fi
    if [ ! -z ${NAME3[17]} ]
    then
    echo "i)${NAME3[17]}"
    fi
    if [ ! -z ${NAME3[18]} ]
    then
    echo "j)${NAME3[18]}"
    fi
    if [ ! -z ${NAME3[19]} ]
    then
    echo "k)${NAME3[19]}"
    fi
    echo ""
    echo "0) Exit"
    echo ""
    read -n 1 -p "Select Option: " SCAN3
    if [ -z $SCAN3 ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    show-scan-results-3

    elif [ $SCAN3 == 1 ]
    then
    CHOSEN_SCAN=${NAME3[0]}
    CHANNEL3=${CH3[0]}
    BSSID3=${BSS3[0]}
    elif [ $SCAN3 == 2 ]
    then
    CHOSEN_SCAN=${NAME3[1]}
    CHANNEL3=${CH3[1]}
    BSSID3=${BSS3[1]}
    elif [ $SCAN3 == 3 ]
    then
    CHOSEN_SCAN=${NAME3[2]}
    CHANNEL3=${CH3[2]}
    BSSID3=${BSS3[2]}
    elif [ $SCAN3 == 4 ]
    then
    CHOSEN_SCAN=${NAME3[3]}
    CHANNEL3=${CH3[3]}
    BSSID3=${BSS3[3]}
    elif [ $SCAN3 == 5 ]
    then
    CHOSEN_SCAN=${NAME3[4]}
    CHANNEL3=${CH3[4]}
    BSSID3=${BSS3[4]}
    elif [ $SCAN3 == 6 ]
    then
    CHOSEN_SCAN=${NAME3[5]}
    CHANNEL3=${CH3[5]}
    BSSID3=${BSS3[5]}
    elif [ $SCAN3 == 7 ]
    then
    CHOSEN_SCAN=${NAME3[6]}
    CHANNEL3=${CH3[6]}
    BSSID3=${BSS3[6]}
    elif [ $SCAN3 == 8 ]
    then
    CHOSEN_SCAN=${NAME3[7]}
    CHANNEL3=${CH3[7]}
    BSSID3=${BSS3[7]}
    elif [ $SCAN3 == 9 ]
    then
    CHOSEN_SCAN=${NAME3[8]}
    CHANNEL3=${CH2[8]}
    BSSID3=${BSS3[8]}
    elif [ $SCAN3 == a ]
    then
    CHOSEN_SCAN=${NAME3[9]}
    CHANNEL3=${CH3[9]}
    BSSID3=${BSS3[9]}
    elif [ $SCAN3 == b ]
    then
    CHOSEN_SCAN=${NAME3[10]}
    CHANNEL3=${CH3[10]}
    BSSID3=${BSS3[10]}
    elif [ $SCAN3 == c ]
    then
    CHOSEN_SCAN=${NAME3[11]}
    CHANNEL3=${CH3[11]}
    BSSID3=${BSS3[11]}
    elif [ $SCAN3 == d ]
    then
    CHOSEN_SCAN=${NAME3[12]}
    CHANNEL3=${CH3[12]}
    BSSID3=${BSS3[12]}
    elif [ $SCAN3 == e ]
    then
    CHOSEN_SCAN=${NAME3[13]}
    CHANNEL3=${CH3[13]}
    BSSID3=${BSS3[13]}
    elif [ $SCAN3 == f ]
    then
    CHOSEN_SCAN=${NAME3[14]}
    CHANNEL3=${CH3[14]}
    BSSID3=${BSS3[14]}
    elif [ $SCAN3 == g ]
    then
    CHOSEN_SCAN=${NAME3[15]}
    CHANNEL3=${CH3[15]}
    BSSID3=${BSS3[15]}
    elif [ $SCAN3 == h ]
    then
    CHOSEN_SCAN=${NAME3[16]}
    CHANNEL3=${CH3[16]}
    BSSID3=${BSS3[16]}
    elif [ $SCAN3 == i ]
    then
    CHOSEN_SCAN=${NAME3[17]}
    CHANNEL3=${CH3[17]}
    BSSID3=${BSS3[17]}
    elif [ $SCAN3 == j ]
    then
    CHOSEN_SCAN=${NAME3[18]}
    CHANNEL3=${CH3[18]}
    BSSID3=${BSS3[18]}
    elif [ $SCAN3 == k ]
    then
    CHOSEN_SCAN=${NAME3[19]}
    CHANNEL3=${CH3[19]}
    BSSID3=${BSS3[19]}
    elif [ $SCAN3 == 0 ]
    then
    rm temp.txt
    rm channel.txt
    main-choice-2
    
    elif [ $SCAN3 == 0 ]
    then
    rm temp.txt
    rm channel.txt
    main-choice-2

    else
    echo ""
    echo ""
    echo "Not and Option"
    show-scan-results-3
    fi

    if [ -z $CHOSEN_SCAN ]
    then
    echo ""
    echo ""
    echo "Not an Option"
    sleep 2
    show-scan-results-3
    fi
}

network-scan-3() {
    airodump-ng -w temp1 --output-format csv "$INTERFACE"

    cat temp1-01.csv | grep "WPA2" > temp.txt
    cat temp.txt | cut -d',' -f14 > names.txt
    cat temp.txt | cut -d',' -f4 > channel.txt
    cat temp.txt | cut -d',' -f1 > bssid.txt

    mapfile -t CH3 <channel.txt
    mapfile -t NAME3 <names.txt
    mapfile -t BSS3 <bssid.txt

    rm names.txt
    rm temp1-01.csv
    rm bssid.txt
    rm channel.txt
    rm temp.txt
    show-scan-results-3
}

wireshark-check() {
    clear
    figlet Capture Packets
    echo "----------------------------- File Saved ------------------------------"
    echo ""
    echo -e "\e[1;31mWARNING:\e[0m You need a GUI to open in Wireshark"
    echo ""
    echo "1) View file in Wireshark"
    echo "2) Exit"
    echo ""
    read -n 1 -p "Select Option: " PATH3

    if [ -z $PATH3 ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    wireshark-check
    elif [ $PATH3 == 1 ]
    then
    clear
    cd Captured-Packets/
    wireshark -r $FILE3.cap
    cd ..
    main-menu
    elif [ $PATH3 == 2 ]
    then
    main-menu
    else
    echo ""
    echo "Not an Option"
    sleep 2
    wireshark-check
    fi
}