#!/bin/bash

package="python3"

echo "Checking if $package is installed..."

if dpkg -l | grep -q "$package"; then
    echo "$package is installed."

    version=$(python3 --version)
    echo "Version: $version"

    case $package in
        python3)
            echo "Description: Python is a high-level programming language used for web development, AI, and automation."
            ;;
        *)
            echo "Description: Unknown package."
            ;;
    esac
else
    echo "$package is NOT installed."
fi
