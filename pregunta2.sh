#!/bin/bash
archivo="Accidentes_ags_2021.csv"

echo "ID                    Camioneta"
echo "-----------------------------------------"

grep -i "adolfo" "$archivo" | awk -F ',' '{print $1 "," $19}' | column -s', ' -t


