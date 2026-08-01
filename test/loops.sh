#!/usr/bin/env bash
set -euo pipefail 
IFS=$'\n\t'

printf "\n"
# for loop over a list 
for color in red green blue; do
    echo "$color"
done 

# for loop over files - safe with spaces in filenames 
for file in *.sh; do
    echo "Processing: $file"
done 

# c-style for loop 
for (( i=0; i<5; i++)); do
    echo "$i"
done 


# while loop
count=0
while [[ $count -lt 5 ]]; do 
    echo "$count"
    ((count++))
done 

# idiomatic method of looping over a file's lines 
while IFS= read -r line; do
    echo "Line: $line"
done < input.txt

# until loop 
until ping -c1 google.com &>/dev/null; do
    echo "waiting for network..."
    sleep 1
done  

echo "done..."

printf "\n"
