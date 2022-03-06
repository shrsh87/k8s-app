#!/bin/bash

for ((i=1; i<=10; i++))
do
    #curl -X GET -d '{"col1": "'$i'" }' -H "Content-Type: application/json" http://adt.example.com/users
    curl -X GET -d '{"col1": "'$i'" }' -H "Content-Type: application/json" http://10.10.1.27/users
    echo

    #echo $i
done
