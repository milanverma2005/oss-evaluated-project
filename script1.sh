#!/bin/bash

echo "=============================="
echo "   SYSTEM IDENTITY REPORT"
echo "=============================="

# Linux Distribution and Kernel
distro=$(cat /etc/os-release | grep "PRETTY_NAME" | cut -d= -f2 | tr -d '"')
kernel=$(uname -r)

# User and Home Directory
user=$(whoami)
home_dir=$HOME

# Uptime and Date
uptime=$(uptime -p)
current_time=$(date)

# Output
echo "Operating System: $distro"
echo "Kernel Version: $kernel"
echo "Logged-in User: $user"
echo "Home Directory: $home_dir"
echo "System Uptime: $uptime"
echo "Current Date & Time: $current_time"

# License Info
echo "License: Most Linux distributions are based on the GNU General Public License (GPL)."

echo "=============================="
