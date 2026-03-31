#!/bin/bash

package="python3"

echo "Checking if $package is installed..."

if dpkg -l | grep -q "$package"; then
    echo "$package is installed."
    version=$(python3 --version)
    echo "Version: $version"

    echo "Description: Python is used for web development, AI, automation, and data science."
else
    echo "$package is NOT installed."
fi
