#!/bin/bash

# Función para calcular el siguiente número de Fibonacci
fibonacci() {
    if [ $1 -le 1 ]; then
        echo $1
    else
        echo $(( $(fibonacci $(($1-1))) + $(fibonacci $(($1-2))) ))
    fi
}

# Imprimir la serie de Fibonacci hasta el número 50
for ((i=0; i<=50; i++)); do
    echo -n "$(fibonacci $i) "
done

echo ""  # Salto de línea al final
