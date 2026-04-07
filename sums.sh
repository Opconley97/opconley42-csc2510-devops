#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 filename.csv"
    exit 1
fi

file="$1"

while IFS=, read -r numberX numberY
do
    if [ -z "$numberX" ] || [ -z "$numberY" ]; then
        continue
    fi
    
    sum=$((numberX + numberY))
    
    echo "$numberX + $numberY = $sum"
done < "$file"
