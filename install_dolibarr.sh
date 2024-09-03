#!/bin/bash

# Update package index
sudo apt update

# Install Apache, MySQL, and PHP
sudo apt install -y apache2 mysql-server php php-mysql

# Install additional PHP modules
sudo apt install -y php-curl php-json php-mbstring php-xml php-zip php-gd

# Download Dolibarr source
cd /var/www/html
sudo wget https://sourceforge.net/projects/dolibarr/files/latest/download -O dolibarr_latest.tgz

# Extract Dolibarr
sudo tar -xvzf dolibarr_latest.tgz
sudo mv dolibarr-*/ dolibarr/
sudo chown -R www-data:www-data /var/www/html/dolibarr

# Restart Apache
sudo systemctl restart apache2

echo "Dolibarr installation completed. Please complete the setup via web interface."
