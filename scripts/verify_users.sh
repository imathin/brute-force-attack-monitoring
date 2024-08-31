#!/bin/bash

echo "Verifying attempted usernames against company database..."
# This is a placeholder. In a real scenario, you would query your company's user database.
# For demonstration, we'll use a sample list of valid users.
valid_users=("john" "jane" "alice" "bob")

attempted_users=$(grep "Failed password" /var/log/secure | awk '{print $9}' | sort | uniq -c | sort -nr)

while read -r count username; do
    if [[ " ${valid_users[@]} " =~ " ${username} " ]]; then
        echo "WARNING: Valid user $username was targeted with $count failed attempts"
    fi
done <<< "$attempted_users"