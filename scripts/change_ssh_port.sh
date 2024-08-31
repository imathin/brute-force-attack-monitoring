#!/bin/bash

echo "Changing SSH port..."
read -p "Enter new SSH port number: " new_port
sed -i "s/^#Port 22/Port $new_port/" /etc/ssh/sshd_config
systemctl restart sshd
echo "SSH port changed to $new_port"