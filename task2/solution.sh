DIR="$1"

file_count=$(find "$DIR" -type f | wc -l)

dir_count=$(find "$DIR" -type d | wc -l)

largest_file=$(find "$DIR" -type f -exec stat -f "%z %N" {} | sort -nr | head -n 1)

largest_file_size=$(echo "$largest_file" | awk '{print $1}')
largest_file_name=$(echo "$largest_file" | cut -f2-)

echo "$file_count"
echo "$dir_count"
echo "$largest_file_name ($largest_file_size байт)"