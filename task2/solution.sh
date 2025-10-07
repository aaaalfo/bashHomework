DIR="$1"

file_count=$(find "$DIR" -type f | wc -l)

dir_count=$(find "$DIR" -type d | wc -l)

largest_file=$(find "$DIR" -type f -exec du -b {} + | sort -nr | head -n 1)

largest_file_size=$(echo "$largest_file" | awk '{print $1}')
largest_file_name=$(echo "$largest_file" | cut -f2-)


echo "Files: $file_count"
echo "Dirs: $dir_count"
echo "Largest file: $largest_file_name, $largest_file_size bytes"