#!/bin/bash
i=1
while [ $i -lt 10000000000 ]
do
    base64 /dev/urandom | head -c $i > random.txt
    ./aar.exe -e random.txt
    rm random.txt
    rm random.txt.aar
    i=`expr $i + 10`
done
