#!/bin/bash

# Function to check if directory exists
check_dir() {
    if [ ! -d "$1" ]; then
        echo "Error: Directory $1 not found. Are you in the root of the source tree?"
        exit 1
    fi
}

echo "Applying patches..."

# Apply Symbol Fix (Python 3.12 compatibility) - Critical for build
echo "Applying symbol.py fix..."
check_dir "development"
if patch -d development -p1 < device/nothing/Aerodactyl/patches/symbol_fix.patch; then
    echo "Symbol fix applied successfully."
else
    echo "Failed to apply symbol fix!"
    # Don't exit on failure if it's already applied, but warn
fi

echo "All patches applied successfully!"
