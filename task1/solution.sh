DIR="$1"
SEARCH="$2"
REPLACE="$3"


find "$DIR" -type f -name "*.txt" | while read -r file; do
    sed -i '' "s/${SEARCH//\//\\/}/${REPLACE//\//\\/}/g" "$file"
done