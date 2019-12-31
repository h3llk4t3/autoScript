
heading() {
    clear
    figlet autoScript
    echo ""
}

coming-soon() {
    echo ""
    echo ""
    echo "Coming Soon..."
    sleep 2
    exec bash "$0" "$@" 
}