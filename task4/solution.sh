
DIR="$1"

find "$DIR" -type f -exec chmod 640 {} \;

