#!/bin/bash

# Pi-hole Quick Setup Script
#make sure to change permissions to make this file executable

echo "Updating system..."
sudo apt update && sudo apt upgrade -y

echo "Installing required dependencies..."
sudo apt install -y curl git

# Optional static IP reminder (edit only if needed)
# echo " You can manually set static IP with:"
# echo "sudo nano /etc/dhcpcd.conf"

echo " Installing Pi-hole..."
curl -sSL https://install.pi-hole.net | bash

echo "Set a Pi-hole admin password:"
sudo pihole -a -p

echo "Pi-hole installation complete!"
echo "Access the web interface at: http://$(hostname -I | awk '{print $1}')/admin"
