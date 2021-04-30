#!/bin/bash

function message(){
    echo "Hello World"
}
anothermessage(){
    echo "This is final message"
}
summing(){
    local f=$(($1+$2))
    echo $f
}

echo "This statement is run before I call the function"
message
echo "This statement is run after I call the function"
anothermessage 
y=$(summing 2 3)
echo "Value is $y"
