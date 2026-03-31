#!/bin/bash

echo "=============================="
echo "   SYSTEM IDENTITY REPORT"
echo "=============================="

distro=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')
kernel=$(uname -r)
user=$(whoami)
home_dir=$HOME
uptime=$(uptime -p)
current_time=$(date)

echo "Operating System: $distro"
echo "Kernel Version: $kernel"
echo "Logged-in User: $user"
echo "Home Directory: $home_dir"
echo "System Uptime: $uptime"
echo "Current Date & Time: $current_time"

echo "=============================="
