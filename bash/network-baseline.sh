#!/usr/bin/env bash
set -u

echo "=== NETWORK BASELINE ==="
echo "Interfaces:"
ip -brief addr 2>/dev/null || true
echo "Routes:"
ip route 2>/dev/null || true
echo "Listening sockets:"
ss -lntup 2>/dev/null || true
