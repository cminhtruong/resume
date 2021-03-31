#!/bin/bash

echo "Upgrade flutter"

# Delete all files in cache
cd /Users/davidetruong/Documents/Project/Flutter/flutter/bin/cache
rm -rf *

# Run Flutter 
flutter doctor -v