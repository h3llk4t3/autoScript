
show-pmkids() {
    clear
    figlet Crack PMKID
    echo "--------------- Choose File to Crack ---------------"
    echo ""
    cd PMKID/
    ls *.16800 -1 > temp.txt
    mapfile -t PMKID <temp.txt
    rm temp.txt
    cd ..

    if [ -z ${PMKID[0]} ]
    then
    echo ""
    echo "No files found"
    sleep 2
    main-choice-1
    else
    echo "1) ${PMKID[0]}"
    fi
    if [ ! -z ${PMKID[1]} ]
    then
    echo "2) ${PMKID[1]}"
    fi
    if [ ! -z ${PMKID[2]} ]
    then
    echo "3) ${PMKID[2]}"
    fi
    if [ ! -z ${PMKID[3]} ]
    then
    echo "4) ${PMKID[3]}"
    fi
    if [ ! -z ${PMKID[4]} ]
    then
    echo "5) ${PMKID[4]}"
    fi
    if [ ! -z ${PMKID[5]} ]
    then
    echo "6) ${PMKID[5]}"
    fi
    if [ ! -z ${PMKID[6]} ]
    then
    echo "7) ${PMKID[6]}"
    fi
    if [ ! -z ${PMKID[7]} ]
    then
    echo "8) ${PMKID[7]}"
    fi
    if [ ! -z ${PMKID[8]} ]
    then
    echo "9) ${PMKID[8]}"
    fi
    if [ ! -z ${PMKID[9]} ]
    then
    echo "a) ${PMKID[9]}"
    fi
    if [ ! -z ${PMKID[10]} ]
    then
    echo "b) ${PMKID[10]}"
    fi
    if [ ! -z ${PMKID[11]} ]
    then
    echo "c) ${PMKID[11]}"
    fi
    if [ ! -z ${PMKID[12]} ]
    then
    echo "d) ${PMKID[12]}"
    fi
    if [ ! -z ${PMKID[13]} ]
    then
    echo "e) ${PMKID[13]}"
    fi
    if [ ! -z ${PMKID[14]} ]
    then
    echo "f) ${PMKID[14]}"
    fi
    if [ ! -z ${PMKID[15]} ]
    then
    echo "g) ${PMKID[15]}"
    fi
    if [ ! -z ${PMKID[16]} ]
    then
    echo "h) ${PMKID[16]}"
    fi
    if [ ! -z ${PMKID[17]} ]
    then
    echo "i) ${PMKID[17]}"
    fi
    if [ ! -z ${PMKID[18]} ]
    then
    echo "j) ${PMKID[18]}"
    fi
    if [ ! -z ${PMKID[19]} ]
    then
    echo "k) ${PMKID[19]}"
    fi
    echo ""
    echo "0) Exit"
    echo ""

    if [ ! -z ${PMKID[20]} ]
    then
    echo ""
    echo "Unable to Display the rest"
    fi

    read -n 1 -p "Select File: " SELECTION

    if [ -z $SELECTION ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    show-pmkids
    elif [ $SELECTION == 1 ]
    then
    CHOSEN_PMKID=${PMKID[0]}
    elif [ $SELECTION == 2 ]
    then
    CHOSEN_PMKID=${PMKID[1]}
    elif [ $SELECTION == 3 ]
    then
    CHOSEN_PMKID=${PMKID[2]}
    elif [ $SELECTION == 4 ]
    then
    CHOSEN_PMKID=${PMKID[3]}
    elif [ $SELECTION == 5 ]
    then
    CHOSEN_PMKID=${PMKID[4]}
    elif [ $SELECTION == 6 ]
    then
    CHOSEN_PMKID=${PMKID[5]}
    elif [ $SELECTION == 7 ]
    then
    CHOSEN_PMKID=${PMKID[6]}
    elif [ $SELECTION == 8 ]
    then
    CHOSEN_PMKID=${PMKID[7]}
    elif [ $SELECTION == 9 ]
    then
    CHOSEN_PMKID=${PMKID[8]}
    elif [ $SELECTION == a ]
    then
    CHOSEN_PMKID=${PMKID[9]}
    elif [ $SELECTION == b ]
    then
    CHOSEN_PMKID=${PMKID[10]}
    elif [ $SELECTION == c ]
    then
    CHOSEN_PMKID=${PMKID[11]}
    elif [ $SELECTION == d ]
    then
    CHOSEN_PMKID=${PMKID[12]}
    elif [ $SELECTION == e ]
    then
    CHOSEN_PMKID=${PMKID[13]}
    elif [ $SELECTION == f ]
    then
    CHOSEN_PMKID=${PMKID[14]}
    elif [ $SELECTION == g ]
    then
    CHOSEN_PMKID=${PMKID[15]}
    elif [ $SELECTION == h ]
    then
    CHOSEN_PMKID=${PMKID[16]}
    elif [ $SELECTION == i ]
    then
    CHOSEN_PMKID=${PMKID[17]}
    elif [ $SELECTION == j ]
    then
    CHOSEN_PMKID=${PMKID[18]}
    elif [ $SELECTION == k ]
    then
    CHOSEN_PMKID=${PMKID[19]}
    elif [ $SELECTION == 0 ]
    then
    main-choice-1
    fi
    if [ -z $CHOSEN_PMKID ]
    then
    echo ""
    echo "Not an Option"
    sleep 2
    show-pmkids
    fi
}

choose-list-2() {
    clear
    figlet Crack PMKID
    echo "-------------------- Choose Password List to Use --------------------"
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
    echo "Unable to Display the Rest"
    fi
    echo ""
    echo "0) Exit"
    echo ""
    read -n 1 -p "Select List: " SELECTION
    if [ -z $SELECTION ]
    then
    echo ""
    echo "Cannot leave blank"
    sleep 2
    choose-list-2

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