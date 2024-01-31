#!/bin/bash

# Check if both arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

writefile="$1"
writestr="$2"

# Create directory path if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Write content to the file
echo -n "$writestr" > "$writefile"

# Check if the file was created successfully
if [ $? -ne 0 ]; then
    echo "Error: Failed to create file $writefile"
    exit 1
fi

echo "File $writefile created with content:"
echo "$writestr"


