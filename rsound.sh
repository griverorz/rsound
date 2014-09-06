#!/bin/sh
arecord -D plughw:1 --duration=3 -vvv /tmp/1sec.wav 2> /dev/null | awk '{print $7}' | egrep '[0-9]' | awk '{total+=$1; count+=1} END {print d "," total/count}' "d=$(date)" >> rsound.txt
