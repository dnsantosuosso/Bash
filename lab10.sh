#!/bin/bash

declare -a usernameArray

counter=0
index=0

readarray usernameArray < username.txt
len=${#usernameArray[*]}

while (( index < len)); do
    echo "Dear ${usernameArray[index]}" > ${usernameArray[index]}
    line=$(grep ${usernameArray[index]} grades.txt)
    num=$(echo $line  | cut -d " " -f 2)
    echo "Your grade for the test is $num" >> ${usernameArray[index]}
    index=$(($index+1));
done