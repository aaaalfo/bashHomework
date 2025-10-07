DIR="$1"

file_count=$(find "$DIR" -type f | wc -l)

dir_count=$(find "$DIR" -type d | wc -l)

largest_file=$(find "$DIR" -type f -exec du -b {} + | sort -nr | head -n 1)

if [ -z "$largest_file_info" ]; then
    largest_file_name=""
    largest_file_size=0
else
    largest_file_size=$(echo "$largest_file_info" | awk '{print $1}')
    largest_file_name=$(echo "$largest_file_info" | cut -f2-)
fi

echo "$file_count"
echo "$dir_count"
echo "$largest_file_name, $largest_file_size байт"