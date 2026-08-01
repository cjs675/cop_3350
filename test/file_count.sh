#!/opt/homebrew/bin/bash
set -euo pipefail 
IFS=$'\n\t'



target_dir="${1:-.}"

if [[ ! -d "$target_dir" ]]; then
    echo "Error: '$target_dir' is not a directory" >&2
    exit 1
fi

declare -A counts

for file in "$target_dir"/*; do
    [[ -f "$file" ]] || continue    # skip dirs/non-files
    ext="${file##*.}"
    if [[ "$ext" == "$file" ]]; then
        ext="(no extension)" 
    fi 
    ((counts["$ext"]++))
done  

for ext in "${!counts[@]}"; do
    echo "$ext: ${counts[$ext]}"
done
