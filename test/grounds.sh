#!/usr/bin/env bash 
# dynamically locate & execute the bash shell using current env paths 

#       set -e          -> exit immediately if any command fails 
#       set -u          -> treat unset variables as error instead of expanding into empty string 
#       set -o pipefail -> fails if any command in it fails 
#       IFS=$'\n\t'     -> restricts word-splitting to newlines/tabs instead of any whitespace 
#                           - avoid surprises w/ filenames containing spaces 

set -euo pipefail 
IFS=$'\n\t'


name="Chris"
echo "Hello, ${name}!" 

readonly PI=3.14159     # constant, can't be reassigned 

unset name              # delete a variable 

name="John Doe"
echo "Hello ${name}!"   # braces avoid ambiguity when concatenating 

# command substitution
today=$(date +%F)
count=$(ls | wc -l) 
