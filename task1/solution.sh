path = "$1"
search = "$2"
replace = "$3"
find path -type f -name "*.txt" | while read -r file; do
    sed -i '' "s/${searh//\//\\/}/${replace//\//\\/}/g" "$file"
done