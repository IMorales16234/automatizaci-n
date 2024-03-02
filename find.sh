#!/bin/bash

path="/var/log/"
w="Isaac_M"

cd "$path"
for file in *
do
      grep -Ril "$w" "$file"
done
