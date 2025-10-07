path = "$1"
string_for_find = "$2"
string_for_change = "$3"
find path -type f -name "*.txt" | while read -r file; do
    sed -i "s/${string_for_find}/${string_for_change}/g" "$file"