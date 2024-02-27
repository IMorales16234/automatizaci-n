#!/bin/bash

for pag in $(cat webpag.txt)
do
#     echo "$pag"
      salida=$(curl -s -I "$pag" | sed -n '1p' | tail -1 | awk '{print $3 " " $4}' | rev | cut -c3- | rev)
#     curl -v "$pag" | grep connected
     echo $salida
     if [ -z "$salida" ]
     then
            echo "$pag FAIL\n"
     else
            echo "$pag OK\n"
     fi
done
