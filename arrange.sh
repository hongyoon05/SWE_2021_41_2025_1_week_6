#!/bin/bash

for path in files/*; do
    filename=$(basename "$path")
    first_char=$(echo "$filename" | cut -c1 | tr '[:upper:]' '[:lower:]')
    
    if [[ "$first_char" =~ [a-z] ]]; then
        mv "$path" "./$first_char/"
    fi
done
