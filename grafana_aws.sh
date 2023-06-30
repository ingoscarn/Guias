#!/bin/bash

# Update and Upgrade
sudo apt-get update
sudo apt-get upgrade -y
clear

# Get Grafana Key
wget -q -O - https://packages.grafana.com/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/grafana.gpg > /dev/null

# Add Grafana repository to sources.list.d
echo "deb [signed-by=/usr/share/keyrings/grafana.gpg] https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list

# Update and Upgrade again
sudo apt update
sudo apt upgrade -y

# Install Grafana
sudo apt install grafana -y

#Install plugin
sudo grafana-cli plugins install grafana-image-renderer

sudo apt-get update && sudo apt-get install -y libx11-xcb1 libxcomposite1 libxcursor1 libxdamage1 libxi6 libxtst6 libnss3 libcups2 libxss1 libxrandr2 libasound2 libatk1.0-0 libatk-bridge2.0-0 libpangocairo-1.0-0 libgtk-3-0 libgbm1
