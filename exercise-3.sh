#!/bin/bash

awk '{ print $(NF-1) }' apache_access > status-codes.txt
sort status-codes.txt | uniq -c | uniq -u > unique-codes.txt

awk '{store_col_1=$1; $1=$2; $2=store_col_1; print}' unique-codes.txt
