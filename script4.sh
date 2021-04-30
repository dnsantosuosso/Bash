#!/bin/bash

function forloopcount(){
    grep "for" $1 > helperfile.txt
    grep "for" $1 | wc -l
    echo $1
}
forloopcount prep3.py

# FUNCTION to show content of all PY programs in directory
function showpy(){
    for file in *.py; do
        cat $file;
    done
}
# showpy

function countlines(){
    counter=0
    for file in *.py; do
        str=$(wc -l $file)
        num=$(echo $str  | cut -d " " -f 1)

        counter=$(($counter+$num));
    done
    echo $counter
}
countlines

function countlines2(){
    numpy=$(countlines)
    counter=0
    for file in *.txt; do
        str=$(wc -l $file)
        num=$(echo $str  | cut -d " " -f 1)

        counter=$(($counter+$num));
    done
    
    final=$(($counter+$numpy))

    echo $final
}
# countlines2

function fword(){
    counter=0
    for file in f*; do
        str=$(wc -w $file)
        num=$(echo $str  | cut -d " " -f 1)

        counter=$(($counter+$num));
    done
    echo $counter
}
fword




