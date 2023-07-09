#!/bin/bash
awk '{print $NF}' apache_access | sort -n | tail -n 5 
