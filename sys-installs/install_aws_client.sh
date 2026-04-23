#!/bin/bash

# Checks Effective User ID (root user has an EUID of 0).
if [ "$EUID" -ne 0 ]; then
    echo "Error: Script requires root privileges. Please run with `sudo`."
    exit 1
fi

# Checks for apt package manager
if ! command -v apt &> /dev/null; then
    echo "Error: This script requires the 'apt' package manager."
    exit 1
fi

# Provides info and gets user confirmation
echo "This script will install the AWS Command Line Interface and its dependencies (curl, unzip)."
read -p "Do you wish to proceed? (y/n): " confirm

if [[ $confirm != "y" ]]; then
    echo "Installation cancelled."
    exit 0
fi

# Checks for name conflicts
if command -v aws &> /dev/null; then
    echo "Conflict Error: The command 'aws' already exists on this system."
    exit 1
fi

echo "Starting installation..."

# Update apt and install dependencies
apt update -y &> /dev/null
apt install -y curl unzip &> /dev/null

# download and install AWS CLI
curl -s "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip -q awscliv2.zip
./aws/install &> /dev/null

# cleanup installation files
rm -rf awscliv2.zip ./aws

# Completion prompt
echo "-------------------------------------------------------"
echo "Done. AWS CLI installation is complete."
echo "Run 'aws --version' to try it out."
echo "-------------------------------------------------------"
