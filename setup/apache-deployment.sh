#!/bin/bash

echo "---UPDATING MASHINE---"
sudo apt-get update

echo "---Apache installieren---"
sudo apt install apache2

echo "---Aktivieren von eingehenden HTTP- und HTTPS-Verkehr für dieses Profil---"
sudo ufw allow in "Apache Full"
