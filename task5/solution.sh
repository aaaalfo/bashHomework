#!/bin/bash
set -e

DIR="$1"

echo "Size(KB)  Path"

find "$DIR" -type d -exec du -s {} + 2>/dev/null | LC_ALL=C sort -nr | head -n 4