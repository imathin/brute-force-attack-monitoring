#!/bin/bash

# Main script: security_assessment.sh

# Function to check if the script is run with root privileges
check_root() {
    if [[ $EUID -ne 0 ]]; then
        echo "This script must be run as root" 
        exit 1
    fi
}

# Main menu
show_menu() {
    echo "CentOS VM Security Assessment and Response Tool"
    echo "1. Analyze authentication logs"
    echo "2. Verify users against company database"
    echo "3. Change SSH port"
    echo "4. Enforce stricter password policies"
    echo "5. Enable multi-factor authentication"
    echo "6. Set up continuous monitoring"
    echo "7. Exit"
    echo -n "Enter your choice [1-7]: "
}

# Main execution
check_root

while true; do
    show_menu
    read choice

    case $choice in
        1) ./analyze_logs.sh ;;
        2) ./verify_users.sh ;;
        3) ./change_ssh_port.sh ;;
        4) ./enforce_password_policy.sh ;;
        5) ./enable_mfa.sh ;;
        6) ./setup_monitoring.sh ;;
        7) echo "Exiting."; exit 0 ;;
        *) echo "Invalid option. Please try again." ;;
    esac

    echo
    read -p "Press enter to continue..."
    clear
done
