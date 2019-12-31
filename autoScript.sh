#!/usr/bin/env bash

source "lib/main-lib.sh"

heading
echo "--------------- Made by Treebug842 ---------------"
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