#!/bin/bash

# server-stats.sh
# A simple script to check basic Linux server performance

echo "======================================"
echo "        Server Performance Stats"
echo "======================================"
echo

# -------------------------------
# System information
# -------------------------------
echo "System Information:"
echo "Hostname: $(hostname)"
echo "OS Version:"
cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"'
echo "Kernel Version: $(uname -r)"
echo "Uptime: $(uptime -p)"
echo

# -------------------------------
# CPU usage
# -------------------------------
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Used: " 100 - $8 "%"}'
echo

# -------------------------------
# Memory usage
# -------------------------------
echo "Memory Usage:"
free -h
echo

echo "Memory Usage Percentage:"
free | awk '/Mem:/ {
  used=$3
  total=$2
  printf "Used Memory: %.2f%%\n", used/total * 100
}'
echo

# -------------------------------
# Disk usage
# -------------------------------
echo "Disk Usage:"
df -h --total | grep total
echo

# -------------------------------
# Top 5 processes by CPU usage
# -------------------------------
echo "Top 5 Processes by CPU Usage:"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6
echo

# -------------------------------
# Top 5 processes by Memory usage
# -------------------------------
echo "Top 5 Processes by Memory Usage:"
ps -eo pid,comm,%cpu,%mem --sort=-%mem | head -n 6
echo

# -------------------------------
# Load average
# -------------------------------
echo "Load Average:"
uptime | awk -F'load average:' '{ print $2 }'
echo

# -------------------------------
# Logged-in users
# -------------------------------
echo "Logged-in Users:"
who
echo

echo "======================================"
echo "        End of Report"
echo "======================================"