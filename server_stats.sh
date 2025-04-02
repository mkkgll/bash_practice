#!/bin/bash
echo "Total CPU usage: "
top -b -n1 | awk 'NR==3 {print $1, $2, $3, $4, $5}'

echo "Total memory usage: "
free

echo "Total disk usage: "
df -h

echo "Top 5 processes by CPU usage: "
ps -eo pcpu,pid,user,args | sort -k 1 -r | head -n 6

echo "Top 5 processes by memory usage: "
ps -eo pmem,pid,user,args | sort -k 1 -r | head -n 6
