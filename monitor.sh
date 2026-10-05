#!/bin/bash
echo "=== System Monitor ==="
echo "Date: $(date)"
echo "Uptime: $(uptime -p)"
echo ""
echo "--- Memory ---"
free -h
echo ""
echo "--- Disk ---"
df -h /
echo ""
echo "--- Top 5 CPU processes ---"
ps aux --sort=-%cpu | head -6
