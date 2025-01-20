#!/bin/bash

# Check if Python is installed
if command -v python3 &>/dev/null; then
    echo "Python is already installed."
else
    echo "Python is not installed. Installing Python..."
    
    # Update package lists
    sudo apt-get update -y

    # Install Python (adjust version or package as needed)
    sudo apt-get install -y python3 python3-pip

    echo "Python installation completed."
fi

# Prompt user for the folder to add to the user PATH
read -p "Please enter the full path of the folder to add to the user PATH: " file_path

# Add the user-specified folder to the PATH by updating .bashrc or .bash_profile
echo "export PATH=\"$file_path:\$PATH\"" >> ~/.bashrc

# Apply the changes immediately
source ~/.bashrc
exec bash
# Display success message
echo "Added $file_path to the user PATH."
echo "Script completed."
