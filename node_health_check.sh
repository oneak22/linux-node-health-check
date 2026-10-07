#!/bin/bash

set -e
set -o pipefail

echo "================================="
echo "      Linux Node Health Check"
echo "================================="

echo
echo "Hostname:"
hostname

echo
echo "Uptime:"
uptime

echo
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4"%"}'

echo
echo "Memory Usage:"
free -h

echo
echo "Disk Usage:"
df -h

echo
echo "Top Processes:"
ps aux --sort=-%cpu | head -6

echo
echo "Health Check Completed Successfully."
