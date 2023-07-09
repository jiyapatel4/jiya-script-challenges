#!/bin/bash

# still trying to figure this one out...
read -p "Start time: " START
read -p "End time: " END

date -d "$START" +"[%d/%b/%Y:%T" > start.txt
date -d "$END" +"[%d/%b/%Y:%T" > end.txt

START1=$(cat start.txt)
END1=$(cat end.txt)

awk '$4 >= $START1 && $4 <= $START2 { print $0 }' apache_access
