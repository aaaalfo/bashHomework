

DIR="$1"

echo "Size(KB)  Path"

find "$DIR" -type d -exec du -s {} + | sort -nr | head -n 5
