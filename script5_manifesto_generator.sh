#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Dhimant Bhardwaj
# Demonstrates interactive input, file writing, and string composition
# Alias example: alias manifestogen='./script5_manifesto_generator.sh'

echo "Welcome to the Open Source Manifesto Generator"
echo "Please answer the following questions:"
echo ""

read -p "1. Which open-source tool do you use most often? " TOOL
read -p "2. What does freedom in software mean to you (one word)? " FREEDOM
read -p "3. What would you build and release for everyone? " BUILD

TODAY=$(date '+%d %B %Y')
FILE_NAME="manifesto_$(whoami).txt"

echo "Open Source Manifesto - $TODAY" > "$FILE_NAME"
echo "" >> "$FILE_NAME"
echo "I believe tools like $TOOL show that software becomes more powerful when it is shared instead of hidden." >> "$FILE_NAME"
echo "For me, freedom means $FREEDOM, because open source gives users the right to understand the systems they depend on." >> "$FILE_NAME"
echo "If I had the chance, I would build $BUILD and publish it openly so that others could adapt it, improve it, and use it for real impact." >> "$FILE_NAME"
echo "Open source is not just a development model; it is a commitment to collective progress." >> "$FILE_NAME"

echo ""
echo "Manifesto successfully written to $FILE_NAME"
echo "--------------------------------------"
cat "$FILE_NAME"
