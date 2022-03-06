#!/bin/bash

for ((i=1; i<=10; i++))
do
    curl -X POST -d '{"col1": "'$i'", "col2": "'$i'", "col3":"ADT_COL3", "col4":"ADT_COL4" }' -H "Content-Type: application/json" http://adt.example.com/users
    echo

    #echo $i
done
