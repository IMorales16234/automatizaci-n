#!/bin/bash

echo "URL                    Estado"
echo "-----------------------------------------"

while read -r pag; do
    salida=$(curl -s -I "$pag" | sed -n '1p' | tail -1 | awk '{print $3 " " $4}' | rev | cut -c3- | rev)
    if [ -z "$salida" ]; then
        printf "%-24s %-10s\n" "$pag" "FAIL"
    else
        printf "%-24s %-10s\n" "$pag" "OK"
    fi
done < webpag.txt

