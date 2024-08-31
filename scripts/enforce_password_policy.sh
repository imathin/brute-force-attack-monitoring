#!/bin/bash

# UNTESTED !!!

echo "Enforcing stricter password policies..."
sed -i 's/^# minlen =.*/minlen = 14/' /etc/security/pwquality.conf
sed -i 's/^# dcredit =.*/dcredit = -1/' /etc/security/pwquality.conf
sed -i 's/^# ucredit =.*/ucredit = -1/' /etc/security/pwquality.conf
sed -i 's/^# ocredit =.*/ocredit = -1/' /etc/security/pwquality.conf
sed -i 's/^# lcredit =.*/lcredit = -1/' /etc/security/pwquality.conf
echo "Password policies updated"