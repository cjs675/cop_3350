#!/usr/bin/env bash 
set -euo pipefail
IFS=#'\n\t'

a=5
b=3

echo $((a + b)) 
echo $((a ** 2)) 
((a++)) 

result=$((a * b)) 

# comparison in arithmetic context 
if ((a > b)); then
    echo "a is bigger" 
fi 
