#!/bin/bash
set -e


mkdir -p archive
find . -type f -name "*.log" -mtime +7 | while read -r file; do
    base_name=$(basename "$file")
    cp "$file" "./$base_name"
    gzip -f "./$base_name"
    mv "./$base_name.gz" archive/
done
