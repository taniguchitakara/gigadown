#!/bin/bash

# Check if URL is provided as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <gigafile_url>"
    exit 1
fi

# Get the URL from the command-line argument
GIGAFILE_URL=$1

# Extract the file identifier from the URL
FILE_ID=$(echo "$GIGAFILE_URL" | grep -oP 'https://\d+\.gigafile\.nu/\K.*')

# Step 1: Save cookies
wget --keep-session-cookies --save-cookies=cookies.txt "$GIGAFILE_URL"

# Step 2: Download the file using the saved cookies
wget --load-cookies=cookies.txt -r -k -E "https://112.gigafile.nu/download.php?file=$FILE_ID"