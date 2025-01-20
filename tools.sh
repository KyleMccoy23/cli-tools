#!/bin/bash

# Get the directory of the script itself
current_dir="$(dirname "$(realpath "$0")")"

# Set the name of the Python script to run
script_name="main.py"

# Check if the specified Python script exists in the current directory
if [ -f "$current_dir/$script_name" ]; then
    echo "Running Python script: $script_name"
    python "$current_dir/$script_name"
else
    echo "The specified Python script was not found: $script_name"
fi

# Pause for user to see the output before exiting
read -p "Press any key to exit..."
