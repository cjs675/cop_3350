#!/usr/bin/env bash

set -euo pipefail  
IFS=$'\n\t'

greet() {
    local name="$1"    # local scopes the variable to the function 
    echo "Hello, $name"
}


greet "Chris"

# multiple args & return codes 
check_file() {
    local file="$1"
    if [[ -f "$file" ]]; then
        return 0        # success
    else 
        return 1        # failure
    fi
} 

if check_file "input.txt"; then
    echo "found it" 
fi

# capturing function output (not just return code) 
get_extension() {
    local filename="$1"
    echo "${filename##*.}"
}

ext=$(get_extension "archive.tar.gz") 
echo "$ext"    # gz


