#!/usr/bin/env bash
set -euo pipefail 
IFS=$'\n\t' 

name="Chris" 

count=30 

# string comparison
if [[ "$name" == "Chris" ]]; then
    echo "match" 
fi 

# numeric comparison 
if [[ "$count" -gt 10 ]]; then 
    echo "more than 10"
fi

# case statement 
case "${1:-}" in 
    start)  
        echo "Starting..."
        ;;
    stop)   
        echo "stopping..."
        ;;
    restart)
        echo "restarting.."
        ;; 
    *)      
        echo "Usage: $0 {start|stop|restart}"; 
        exit 1
        ;;
esac
