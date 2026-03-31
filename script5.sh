#!/bin/bash

echo "==== Open Source Manifesto Generator ===="

# Taking input
read -p "What is your name? " name
read -p "Why do you like open source? " reason
read -p "What will you contribute? " contribution

# Current date
today=$(date)

# File name
file="manifesto.txt"

# Writing to file
echo "Open Source Manifesto" > $file
echo "Date: $today" >> $file
echo "" >> $file

echo "My name is $name. I believe in open source because $reason." >> $file
echo "I aim to contribute by $contribution and support the community." >> $file

echo "" >> $file
echo "Open source is about collaboration, freedom, and innovation." >> $file

# Alias concept (example in comment)
# alias manifesto="cat manifesto.txt"

echo "Manifesto saved to $file"
