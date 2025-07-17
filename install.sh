#!/bin/bash
# Set terminal type for better color support
export TERM=xterm-256color

# Start an infinite loop for the menu
while true; do
    # Clear the screen
    printf "\033c"

    # Display the main menu
    echo "Kali Linux Installer Menu"
    echo "===================================="
    echo "1. Install Kali (Method 1) Andronix "
    echo "2. Install Kali (Method 2) AnLinux "
    echo "3. Install     # Method 3: Install Debian-Termux and convert to Kali
             (Method 3)"
    echo "4. Install Kali (Nethunter) Preferably"
    echo "5. Show Available Tools"
    echo "6. Install Tools inside Kali"
    echo "7. Support Project (Give a Star ⭐)"
    echo "8. Exit"
    echo "===================================="

    # Prompt user for input
    read -p "Choose an option: " option

    case $option in
        1)# Method 1: Install Kali from Andronix
     
            pkg install wget -y
            wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Kali/kali.sh
            chmod +x kali.sh
            ./kali.sh
            ;;

        2)   # Method 2: Install Kali from AnLinux
       
            pkg update && pkg upgrade -y
            pkg install wget proot tar -y
            wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Kali/kali.sh
            chmod +x kali.sh
            ./kali.sh
            ;;

        3)    # Method 3: Install Debian-Termux and convert to Kali
            
            pkg install git proot wget -y
            git clone https://github.com/MFDGaming/Debian-Termux
            cd Debian-Termux || exit
            bash Debian.sh
            cd ..
            ;;

        4) 
            # Install Kali NetHunter
            pkg update -y && pkg upgrade -y
            pkg install git wget proot -y
            git clone https://github.com/Hax4us/Nethunter-In-Termux.git
            cd Nethunter-In-Termux
            chmod +x kalinethunter.sh
            ./kalinethunter.sh
            echo "This version is a little different; it needs to run this command manually:"
            echo "./kalinethunter"
            ;;

        5)   # Display a list of available tools
            echo ""
            echo "Available Tools:"
            echo "- nmap"
            echo "- whois"
            echo "- dnsutils (dig, nslookup)"
            echo "- net-tools (ifconfig, netstat)"
            echo "- whatweb"
            echo "- nikto"
            echo "- wafw00f"
            echo "- theHarvester"
            echo "- recon-ng"
            echo "- amass"
            echo "- sqlmap"
            echo "- metasploit-framework"
            echo "- hydra"
            echo "- john (John the Ripper)"
            echo "- crunch"
            echo "- zphisher"
            echo "- HiddenEye"
            echo "- SocialFish"
            echo "- T.DROP => https://github.com/mhmoud-jma/T.DROP"
            read -p "Press Enter to return to menu..."
            ;;

        6) 
            # Install tools inside an existing Kali environment
         # Open GitHub project page for support

            echo "Installing tools inside Kali..."

            if [ ! -f ./start-kali.sh ]; then
                echo "❌ Error: Kali is not installed or start-kali.sh is missing."
                read -p "Press Enter to return to menu..."
                continue
            fi

            TOOLS_COMMANDS="apt update && apt upgrade -y && \
apt install -y nmap whois dnsutils net-tools whatweb nikto wafw00f theharvester recon-ng amass sqlmap metasploit-framework hydra john crunch"

            echo "$TOOLS_COMMANDS" | ./start-kali.sh

            if [ $? -ne 0 ]; then
                echo ""
                echo "❌ Error: Failed to install tools. Make sure Kali is working properly."
            else
                echo ""
                echo "✅ Tools installed successfully inside Kali."
            fi

            read -p "Press Enter to return to menu..."
            ;;




        7) # Open GitHub project page for support
            echo "Thanks for your support! Opening project page..."
            termux-open-url https://github.com/mhmoud-jma/Install.kali
            ;;

        8)  # Exit the script
            echo "Exiting..."
            exit 0
            ;;

        *)
            echo "Invalid option. Please try again."
            sleep 1
            ;;
    esac
done
