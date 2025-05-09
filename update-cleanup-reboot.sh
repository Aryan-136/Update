#!/bin/bash

echo "🚀 Starting full system update and cleanup..."

echo "🔄 Running: apt update & upgrade"
sudo apt update && sudo apt upgrade -y

echo "⚙️ Running: apt full-upgrade"
sudo apt full-upgrade -y

echo "🔄 Running: apt-get update & upgrade"
sudo apt-get update && sudo apt-get upgrade -y

echo "⚙️ Running: apt-get dist-upgrade"
sudo apt-get dist-upgrade -y

echo "🧹 Running: apt autoremove & autoclean"
sudo apt autoremove -y
sudo apt autoclean

echo "🧹 Running: apt-get autoremove & autoclean"
sudo apt-get autoremove -y
sudo apt-get autoclean

echo "✅ System update and cleanup complete."

# === AUTO-REBOOT WITH TIMEOUT ===
echo -n "🔁 Reboot now? (Y/n) [auto reboot in 10s]: "
read -t 10 confirm

if [[ "$confirm" =~ ^[Nn]$ ]]; then
    echo "⏹️ Reboot canceled by user."
else
    echo "🔄 Rebooting system..."
    sudo reboot
fi
