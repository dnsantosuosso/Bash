#!/bin/bash
clear
mkdir 217339987_diego_santosuossosalerno
cd /Users/diegosantosuosso/217339987_diego_santosuossosalerno
vi helloWorld.c
gcc helloWorld.c -o helloWorld
./helloWorld >> lab9.txt

echo "***************" >> lab9.txt

date "+Date = %m-%d-%Y" >> lab9.txt
date "+%T" >> lab9.txt

echo "***************" >> lab9.txt

wc -w lab9.txt >> lab9.txt

cat lab9.txt >> step7.txt

echo "***************" >> lab9.txt

grep -q "hello world" lab9.txt && echo "hello world" >> lab9.txt
grep -q "Hello World" lab9.txt && echo "Hello World" >> lab9.txt

echo "***************" >> lab9.txt

diff step7.txt lab9.txt >> lab9.txt

echo "***************" >> lab9.txt

chmod u=rw,g=w,o=r lab9.txt
ls -l lab9.txt >> lab9.txt

echo "***************" >> lab9.txt