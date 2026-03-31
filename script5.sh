#!/bin/bash

echo "==== Open Source Manifesto Generator ===="

read -p "What is your name? " name
read -p "Why do you like open source? " reason
read -p "What will you contribute? " contribution

today=$(date)
file="manifesto.txt"

echo "Open Source Manifesto" > $file
echo "Date: $today" >> $file
echo "" >> $file

echo "My name is $name. I believe in open source because $reason." >> $file
echo "I aim to contribute by $contribution and support the community." >> $file

echo "" >> $file
echo "Open source is about collaboration, freedom, and innovation." >> $file

echo "Manifesto saved to $file"
