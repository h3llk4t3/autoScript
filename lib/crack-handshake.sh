
choose-file-1() {
    clear
    figlet Crack Handshake
    echo "---------------------------- Choose File to Crack ----------------------------"
    echo ""
    cd Handshake/
    ls *.cap -1 > temp.txt
    mapfile -t CRACK2 <temp.txt
    rm temp.txt
    cd ..

    if [ -z ${CRACK2[0]} ]
    then
    echo ""
    echo "No files found"
    sleep 2
    main-choice-1
    else
    echo "1) ${CRACK2[0]}"
    fi
    if [ ! -z ${CRACK2[1]} ]
    then
    echo "2) ${CRACK2[1]}"
    fi
    if [ ! -z ${CRACK2[2]} ]
    then
    echo "3) ${CRACK2[2]}"
    fi
    if [ ! -z ${CRACK2[3]} ]
    then
    echo "4) ${CRACK2[3]}"
    fi
    if [ ! -z ${CRACK2[4]} ]
    then
    echo "5) ${CRACK2[4]}"
    fi
    if [ ! -z ${CRACK2[5]} ]
    then
    echo "6) ${CRACK2[5]}"
    fi
    if [ ! -z ${CRACK2[6]} ]
    then
    echo "7) ${CRACK2[6]}"
    fi
    if [ ! -z ${CRACK2[7]} ]
    then
    echo "8) ${CRACK2[7]}"
    fi
    if [ ! -z ${CRACK2[8]} ]
    then
    echo "9) ${CRACK2[8]}"
    fi
    if [ ! -z ${CRACK2[9]} ]
    then
    echo "a) ${CRACK2[9]}"
    fi
    if [ ! -z ${CRACK2[10]} ]
    then
    echo "b) ${CRACK2[10]}"
    fi
    if [ ! -z ${CRACK2[11]} ]
    then
    echo "c) ${CRACK2[11]}"
    fi
    if [ ! -z ${CRACK2[12]} ]
    then
    echo "d) ${CRACK2[12]}"
    fi
    if [ ! -z ${CRACK2[13]} ]
    then
    echo "e) ${CRACK2[13]}"
    fi
    if [ ! -z ${CRACK2[14]} ]
    then
    echo "f) ${CRACK2[14]}"
    fi
    if [ ! -z ${CRACK2[15]} ]
    then
    echo "g) ${CRACK2[15]}"
    fi
    if [ ! -z ${CRACK2[16]} ]
    then
    echo "h) ${CRACK2[16]}"
    fi
    if [ ! -z ${CRACK2[17]} ]
    then
    echo "i) ${CRACK2[17]}"
    fi
    if [ ! -z ${CRACK2[18]} ]
    then
    echo "j) ${CRACK2[18]}"
    fi
    if [ ! -z ${CRACK2[19]} ]
    then
    echo "k) ${CRACK2[10]}"
    fi
    echo "0) Exit"
    echo ""
    read -n 1 -p "Select File: " CHOICE
    echo ""

    if [ -z $CHOICE ]
    then
    echo "Cannot leave blank"
    sleep 2
    choose-file-1
    elif [ $CHOICE == 1 ]
    then
    CHOSEN_FILE=${CRACK2[0]}
    elif [ $CHOICE == 2 ]
    then
    CHOSEN_FILE=${CRACK2[1]}
    elif [ $CHOICE == 3 ]
    then
    CHOSEN_FILE=${CRACK2[2]}
    elif [ $CHOICE == 4 ]
    then
    CHOSEN_FILE=${CRACK2[3]}
    elif [ $CHOICE == 5 ]
    then
    CHOSEN_FILE=${CRACK2[4]}
    elif [ $CHOICE == 6 ]
    then
    CHOSEN_FILE=${CRACK2[5]}
    elif [ $CHOICE == 7 ]
    then
    CHOSEN_FILE=${CRACK2[6]}
    elif [ $CHOICE == 8 ]
    then
    CHOSEN_FILE=${CRACK2[7]}
    elif [ $CHOICE == 9 ]
    then
    CHOSEN_FILE=${CRACK2[8]}
    elif [ $CHOICE == a ]
    then
    CHOSEN_FILE=${CRACK2[9]}
    elif [ $CHOICE == b ]
    then
    CHOSEN_FILE=${CRACK2[10]}
    elif [ $CHOICE == c ]
    then
    CHOSEN_FILE=${CRACK2[11]}
    elif [ $CHOICE == d ]
    then
    CHOSEN_FILE=${CRACK2[12]}
    elif [ $CHOICE == e ]
    then
    CHOSEN_FILE=${CRACK2[13]}
    elif [ $CHOICE == f ]
    then
    CHOSEN_FILE=${CRACK2[14]}
    elif [ $CHOICE == g ]
    then
    CHOSEN_FILE=${CRACK2[15]}
    elif [ $CHOICE == h ]
    then
    CHOSEN_FILE=${CRACK2[16]}
    elif [ $CHOICE == i ]
    then
    CHOSEN_FILE=${CRACK2[17]}
    elif [ $CHOICE == j ]
    then
    CHOSEN_FILE=${CRACK2[18]}
    elif [ $CHOICE == k ]
    then
    CHOSEN_FILE=${CRACK2[19]}
    elif [ $CHOICE == 0 ]
    then
    main-choice-1
    fi
    if [ -z $CHOSEN_FILE ]
    then
    echo ""
    echo "Not an Option"
    sleep 2
    choose-file-1
    fi
}

choose-list-1() {
    clear
    figlet Crack Handshake
    echo "-------------------------- Choose Password List to Use --------------------------"
    echo ""
    cd Password-List
    ls *.txt -1 > temp.txt
    mapfile -t LIST <temp.txt
    rm temp.txt
    cd ..

    if [ -z ${LIST[0]} ]
    then
    echo ""
    echo "No Password Lists Found"
    sleep2
    main-choice-1
    else
    echo "1) ${LIST[0]}"
    fi
    if [ ! -z ${LIST[1]} ]
    then
    echo "2) ${LIST[1]}"
    fi
    if [ ! -z ${LIST[2]} ]
    then
    echo "3) ${LIST[2]}"
    fi
    if [ ! -z ${LIST[3]} ]
    then
    echo "4) ${LIST[3]}"
    fi
    if [ ! -z ${LIST[4]} ]
    then
    echo "5) ${LIST[4]}"
    fi
    if [ ! -z ${LIST[5]} ]
    then
    echo "6) ${LIST[5]}"
    fi
    if [ ! -z ${LIST[6]} ]
    then
    echo "7) ${LIST[6]}"
    fi
    if [ ! -z ${LIST[7]} ]
    then
    echo "8) ${LIST[7]}"
    fi
    if [ ! -z ${LIST[8]} ]
    then
    echo "9) ${LIST[8]}"
    fi
    if [ ! -z ${LIST[9]} ]
    then
    echo "a) ${LIST[9]}"
    fi
    if [ ! -z ${LIST[10]} ]
    then
    echo "b) ${LIST[10]}"
    fi
    if [ ! -z ${LIST[11]} ]
    then
    echo "c) ${LIST[11]}"
    fi
    if [ ! -z ${LIST[12]} ]
    then
    echo "d) ${LIST[12]}"
    fi
    if [ ! -z ${LIST[13]} ]
    then
    echo "e) ${LIST[13]}"
    fi
    if [ ! -z ${LIST[14]} ]
    then
    echo "f) ${LIST[14]}"
    fi
    if [ ! -z ${LIST[15]} ]
    then
    echo "g) ${LIST[15]}"
    fi
    if [ ! -z ${LIST[16]} ]
    then
    echo "h) ${LIST[16]}"
    fi
    if [ ! -z ${LIST[17]} ]
    then
    echo "i) ${LIST[17]}"
    fi
    if [ ! -z ${LIST[18]} ]
    then
    echo "j) ${LIST[18]}"
    fi
    if [ ! -z ${LIST[19]} ]
    then
    echo "k) ${LIST[19]}"
    fi
    if [ ! -z ${LIST[20]} ]
    then
    echo "l) ${LIST[20]}"
    fi
    if [ ! -z ${LIST[21]} ]
    then
    echo "m) ${LIST[21]}"
    fi
    if [ ! -z ${LIST[22]} ]
    then
    echo "n) ${LIST[22]}"
    fi
    if [ ! -z ${LIST[23]} ]
    then
    echo "o) ${LIST[23]}"
    fi
    if [ ! -z ${LIST[24]} ]
    then
    echo "p) ${LIST[24]}"
    fi
    if [ ! -z ${LIST[25]} ]
    then
    echo ""
    echo "Too Many Files..." 
    sleep 1
    echo "Display Limit Reached..."
    fi

    echo ""
    read -n 1 -p "Select List: " SELECTION
    if [ -z $SELECTION ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    choose-list-1

    elif [ $SELECTION == 1 ]
    then
    SELECTED_LIST=${LIST[0]}
    elif [ $SELECTION == 2 ]
    then
    SELECTED_LIST=${LIST[1]}
    elif [ $SELECTION == 3 ]
    then
    SELECTED_LIST=${LIST[2]}
    elif [ $SELECTION == 4 ]
    then
    SELECTED_LIST=${LIST[3]}
    elif [ $SELECTION == 5 ]
    then
    SELECTED_LIST=${LIST[4]}
    elif [ $SELECTION == 6 ]
    then
    SELECTED_LIST=${LIST[5]}
    elif [ $SELECTION == 7 ]
    then
    SELECTED_LIST=${LIST[6]}
    elif [ $SELECTION == 8 ]
    then
    SELECTED_LIST=${LIST[7]}
    elif [ $SELECTION == 9 ]
    then
    SELECTED_LIST=${LIST[8]}
    elif [ $SELECTION == a ]
    then
    SELECTED_LIST=${LIST[9]}
    elif [ $SELECTION == b ]
    then
    SELECTED_LIST=${LIST[10]}
    elif [ $SELECTION == c ]
    then
    SELECTED_LIST=${LIST[11]}
    elif [ $SELECTION == d ]
    then
    SELECTED_LIST=${LIST[12]}
    elif [ $SELECTION == e ]
    then
    SELECTED_LIST=${LIST[13]}
    elif [ $SELECTION == f ]
    then
    SELECTED_LIST=${LIST[14]}
    elif [ $SELECTION == g ]
    then
    SELECTED_LIST=${LIST[15]}
    elif [ $SELECTION == h ]
    then
    SELECTED_LIST=${LIST[16]}
    elif [ $SELECTION == i ]
    then
    SELECTED_LIST=${LIST[17]}
    elif [ $SELECTION == j ]
    then
    SELECTED_LIST=${LIST[18]}
    elif [ $SELECTION == k ]
    then
    SELECTED_LIST=${LIST[19]}
    elif [ $SELECTION == l ]
    then
    SELECTED_LIST=${LIST[20]}
    elif [ $SELECTION == m ]
    then
    SELECTED_LIST=${LIST[21]}
    elif [ $SELECTION == n ]
    then
    SELECTED_LIST=${LIST[22]}
    elif [ $SELECTION == o ]
    then
    SELECTED_LIST=${LIST[23]}
    elif [ $SELECTION == p ]
    then
    SELECTED_LIST=${LIST[24]}
    elif [ $SELECTION == 0 ]
    then
    main-choice-1
    fi
}