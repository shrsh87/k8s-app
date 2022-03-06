#!/bin/bash

for ((i=1; i<=10; i++))
do
    curl -X DELETE -d '{"col1": "'$i'"}' -H "Content-Type: application/json" http://adt.example.com/users
    echo

    #echo $i
done
