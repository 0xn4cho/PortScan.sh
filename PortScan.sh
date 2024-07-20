#!/bin/bash


GREEN="\033[32m"
YELLOW="\033[1;33m"
RED="\033[31m"
RESET="\033[0m"


function display_banner() {
    echo -e "${RED}"
    figlet -f big "PORTSCAN"
    echo -e "${RESET}"
    
    echo -e "${GREEN}"
    echo "Developed by: 0xn4cho "
    echo -e "${RESET}"
}


function scan_with_nmap() {
    ip="$1"
    echo -e "${YELLOW}Scanning IP: ${ip} with nmap${RESET}"
    sudo nmap -sC -sV -T4 -p- --min-rate 10000 "$ip"
}


function show_menu() {

    echo -e "${YELLOW}"
    echo "Select an option :"
    echo -e "${RESET}"
    echo "1. Scan an IP"
    echo "2. Exit"
    read -p "Enter an option: " option

    case "$option" in
        1)
            read -p "Enter an IP to scan: " ip
            scan_with_nmap "$ip"
            ;;
        2)
            echo "Going out..."
            exit 0
            ;;
        *)
            echo -e "${RED}ERROR${RESET}"
            show_menu
            ;;
    esac
}


display_banner


show_menu
 

