#!/bin/bash

#Script that checks how many *.py files are older than test.py file

counter=0
for file in *.py; do
    if [ $file -ot test.py ]; then
        counter=$((counter+1));
    fi;
done

echo $counter

chmod 755 script