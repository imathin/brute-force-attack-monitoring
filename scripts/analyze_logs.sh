#!/bin/bash

echo "Analyzing authentication logs..."
suspicious_ips=$(grep "Failed password" /var/log/secure | awk '{print $11}' | sort | uniq -c | sort -nr | head -n 10)
echo "Top 10 IPs with failed login attempts:"
echo "$suspicious_ips"

attempted_users=$(grep "Failed password" /var/log/secure | awk '{print $9}' | sort | uniq -c | sort -nr | head -n 10)
echo "Top 10 usernames with failed login attempts:"
echo "$attempted_users"