#!/bin/bash
echo "📈 Monitoring system resources..."
top -b -n 1 | head -n 20
echo "🔍 Checking AV-related processes..."
ps aux | grep av | grep -v grep
