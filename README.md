# Server Performance Stats

A simple Bash script to analyze and display key server performance metrics on a Linux system.

**Project URL:** [https://roadmap.sh/projects/server-stats](https://roadmap.sh/projects/server-stats)

## Features

- **System Information** — Hostname, OS version, kernel version, and uptime
- **CPU Usage** — Current CPU utilization percentage
- **Memory Usage** — Total, used, free memory with usage percentage
- **Disk Usage** — Overall disk space summary
- **Top Processes** — Top 5 processes by CPU and memory consumption
- **Load Average** — System load averages
- **Logged-in Users** — Currently active user sessions

## Usage

```bash
chmod +x server-stats.sh
./server-stats.sh
```

## Sample Output

```
======================================
        Server Performance Stats
======================================

System Information:
Hostname: my-server
OS Version: Ubuntu 26.04 LTS
Kernel Version: 7.0.0-22-generic
Uptime: up 3 days, 24 minutes

CPU Usage:
CPU Used: 4.3%

Memory Usage:
               total        used        free      shared  buff/cache   available
Mem:            14Gi       6.9Gi       1.9Gi       360Mi       6.4Gi       7.7Gi

Memory Usage Percentage:
Used Memory: 47.30%

Disk Usage:
total           488G   68G  397G  15% -

Top 5 Processes by CPU Usage:
    PID COMMAND         %CPU %MEM
  91642 brave           31.1  3.4
  88562 node            15.3  2.9
  64420 brave            6.8  1.7

...

======================================
        End of Report
======================================
```

## Requirements

- Linux-based OS
- Bash shell
- Standard utilities: `top`, `free`, `df`, `ps`, `uptime`, `who`