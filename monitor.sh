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

echo ""
echo "--- GPU ---"
if command -v nvidia-smi > /dev/null 2>&1; then
    nvidia-smi --query-gpu=name,utilization.gpu,memory.used,memory.total,temperature.gpu --format=csv
else
    echo "No NVIDIA GPU found"
fi
