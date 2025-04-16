#!/bin/bash
LOG_FILE="/var/log/av_toolkit.log"
if [[ "$1" == "tail" ]]; then
    echo "📄 Tailing log file..."
    tail -f "$LOG_FILE"
elif [[ "$1" == "rotate" ]]; then
    echo "🔄 Rotating logs..."
    mv "$LOG_FILE" "$LOG_FILE.old"
    touch "$LOG_FILE"
else
    echo "Usage: logs.sh [tail|rotate]"
fi
