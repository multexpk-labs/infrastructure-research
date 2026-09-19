#!/usr/bin/env bash
set -u

echo "=== HOST BASELINE ==="
echo "Hostname: $(hostname)"
echo "Kernel: $(uname -srmo)"
echo "Uptime: $(uptime -p 2>/dev/null || true)"
echo "CPU: $(nproc 2>/dev/null || true) cores"
echo "Memory:"
free -h 2>/dev/null || true
echo "Root filesystem:"
df -h / 2>/dev/null || true
echo "Load:"
uptime 2>/dev/null || true
