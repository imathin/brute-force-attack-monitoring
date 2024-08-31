# brute-force-attach-monitoring

# CentOS VM Security Assessment and Response Tool

This tool provides a set of scripts for performing a comprehensive security assessment and response on a CentOS virtual machine that may be under brute force attack. It allows for log analysis, user verification, and implementation of various security measures.

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Installation](#installation)
3. [Usage](#usage)
4. [Script Descriptions](#script-descriptions)
5. [Important Notes](#important-notes)
6. [Customization](#customization)
7. [Troubleshooting](#troubleshooting)

## Prerequisites

- CentOS virtual machine
- Root access to the VM
- Basic knowledge of Linux command line and bash scripting

## Installation

1. Clone or download this repository to your CentOS VM.
2. Navigate to the directory containing the scripts.
3. Make all scripts executable by running:

```bash
chmod +x scripts/security_assessment.sh scripts/analyze_logs.sh scripts/verify_users.sh scripts/change_ssh_port.sh scripts/enforce_password_policy.sh scripts/enable_mfa.sh scripts/setup_monitoring.sh
```

## Usage

1. Run the main script with root privileges:

```bash
sudo scripts/security_assessment.sh
```

2. You will be presented with a menu of options. Enter the number corresponding to the action you want to perform:

```
CentOS VM Security Assessment and Response Tool
1. Analyze authentication logs
2. Verify users against company database
3. Change SSH port
4. Enforce stricter password policies
5. Enable multi-factor authentication
6. Set up continuous monitoring
7. Exit
Enter your choice [1-7]:
```

3. Follow the prompts for each selected option.
4. After each action, press Enter to return to the main menu.
5. Select option 7 to exit the tool when you're done.

## Script Descriptions

- `security_assessment.sh`: The main script that provides the menu interface.
- `analyze_logs.sh`: Analyzes authentication logs for suspicious activities.
- `verify_users.sh`: Checks attempted usernames against a list of valid users.
- `change_ssh_port.sh`: Changes the SSH port to a non-standard port.
- `enforce_password_policy.sh`: Implements stricter password policies.
- `enable_mfa.sh`: Enables multi-factor authentication using Google Authenticator. **Note: This script is currently untested and may require additional configuration or troubleshooting.**
- `setup_monitoring.sh`: Sets up continuous monitoring using fail2ban.

## Important Notes

- Always run these scripts in a test environment before using them in production.
- Some scripts (like changing SSH port or enabling MFA) may require additional system configuration or restarts.
- The user verification script uses a placeholder list of valid users. Modify this to integrate with your actual user database.
- Ensure you have backups and a way to access your VM if something goes wrong (e.g., if you change the SSH port and forget the new port number).
- **The MFA script (`enable_mfa.sh`) is currently untested. Use it with caution and be prepared to troubleshoot or revert changes if necessary. It's recommended to thoroughly test and customize this script before using it in any production environment.**

## Customization

- Modify the `valid_users` array in `verify_users.sh` to match your organization's user list.
- Adjust fail2ban settings in `setup_monitoring.sh` to suit your security needs.
- Customize password policies in `enforce_password_policy.sh` as per your organization's requirements.
- **For the MFA script (`enable_mfa.sh`), consider consulting with a security expert to ensure it meets your specific needs and security standards before implementation.**

## Troubleshooting

- If a script fails to run, ensure it has execute permissions.
- Check system logs (`/var/log/messages`, `/var/log/secure`) for any error messages.
- If you're locked out after changing the SSH port, you may need to access the VM directly through your virtualization platform's console.
- **If you encounter issues with the MFA setup, be prepared to disable it and revert to your previous authentication method. Always ensure you have an alternative way to access your system before making changes to authentication mechanisms.**

For any issues or questions, please contact your system administrator or open an issue in this project's repository.