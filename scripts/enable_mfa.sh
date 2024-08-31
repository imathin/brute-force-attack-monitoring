#!/bin/bash

echo "Enabling multi-factor authentication..."
yum install -y google-authenticator
echo "auth required pam_google_authenticator.so" >> /etc/pam.d/sshd
sed -i 's/^ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/' /etc/ssh/sshd_config
systemctl restart sshd
echo "Multi-factor authentication enabled"