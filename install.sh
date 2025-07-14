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
    echo "1. Install Kali (Method 1)"
    echo "2. Install Kali (Method 2)"
    echo "3. Install Kali (Method 3)"
    echo "4. Install Kali (Nethunter) Preferably"
    echo "5. Show Available Tools"
    echo "6. Install Tools inside Kali"
    echo "7. Support Project (Give a Star ⭐)"
    echo "8. Exit"
    echo "===================================="
    
    # Prompt user for input
    read -p "Choose an option: " option

    case $option in
        1)
            # Method 1: Install Kali from Andronix
            pkg install wget -y
            wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Kali/kali.sh
            chmod +x kali.sh
            ./kali.sh
            ;;

        2)
            # Method 2: Install Kali from AnLinux
            pkg update && pkg upgrade -y
            pkg install wget proot tar -y
            wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Kali/kali.sh
            chmod +x kali.sh
            ./kali.sh
            ;;

        3)
            # Method 3: Install Debian-Termux and convert to Kali
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

        5)
            # Display a list of available tools
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
            echo "Installing tools inside Kali..."

            proot-distro login root -- bash -c "apt update && apt install -y nmap whois dnsutils net-tools whatweb nikto wafw00f theharvester recon-ng amass sqlmap metasploit-framework hydra john crunch"

            if [ $? -ne 0 ]; then
                # Handle installation error
                echo ""
                echo "❌ Error: Kali Linux not found or not installed."
                echo "🔧 Please install Kali first using one of the options (1, 2, or 3) before running this step."
                echo "📦 You can install the tools manually inside Kali using:"
                echo ""
                echo "sudo apt install -y nmap whois dnsutils net-tools whatweb nikto wafw00f theharvester recon-ng amass sqlmap metasploit-framework hydra john crunch"
                echo ""
                echo "🌐 Tool References:"
                echo "- T.DROP => https://github.com/mhmoud-jma/T.DROP"
                echo "- Zphisher => https://github.com/htr-tech/zphisher"
                echo "- HiddenEye => https://github.com/DarkSecDevelopers/HiddenEye"
                echo "- SocialFish => https://github.com/UndeadSec/SocialFish"
                echo ""
                read -p "Press Enter to return to menu..."
            else
                echo ""
                echo "✅ Tools installed successfully inside Kali."
                echo ""
                echo "🌐 Tool References (for manual use or updates):"
                echo "- T.DROP => https://github.com/mhmoud-jma/T.DROP"
                echo "- Zphisher => https://github.com/htr-tech/zphisher"
                echo "- HiddenEye => https://github.com/DarkSecDevelopers/HiddenEye"
                echo "- SocialFish => https://github.com/UndeadSec/SocialFish"
                echo ""
                echo "ℹ️ You can also install/update them manually later inside Kali."
                read -p "Press Enter to continue..."
            fi
            ;;

        7)
            # Open GitHub project page for support
            echo "Thanks for your support! Opening project page..."
            termux-open-url https://github.com/mhmoud-jma/Install.kali
            ;;

        8)
            # Exit the script
            echo "Exiting..."
            exit 0
            ;;

        *)
            # Handle invalid input
            echo "Invalid option. Please try again."
            sleep 1
            ;;
    esac
done
