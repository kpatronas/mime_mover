#!/bin/bash

# Check if a directory path is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <source_directory>"
    exit 1
fi

source_directory="$1"
mime_master_directory="$HOME/mime_mover"

# Check if the provided path is a directory
if [ ! -d "$source_directory" ]; then
    echo "Error: '$source_directory' is not a directory."
    exit 1
fi

# Function to create a directory for a MIME type if it doesn't exist
create_mime_directory() {
    local mime_type="$1"
    local mime_directory="$mime_master_directory/$mime_type"
    
    if [ ! -d "$mime_directory" ]; then
        mkdir -p "$mime_directory"
    fi
}

# Iterate over files in the source directory
for file in "$source_directory"/*; do
    if [ -f "$file" ]; then
        mime_type=$(file --mime-type -b "$file")
        
        # Check if the file is open in any process
        open_status=$(lsof "$file" | grep -o "$file")

        if [ -n "$open_status" ]; then
            status="Open"
        else
            status="Not Open"
        fi

        echo "File: $file, MIME Type: $mime_type, Status: $status"
        
        if [ "$status" == "Not Open" ]; then
            create_mime_directory "$mime_type"
            mv "$file" "$mime_master_directory/$mime_type/"
            echo "Moved '$file' to '$mime_type' directory."
        fi
    fi
done
