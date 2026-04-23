# System Installations

## Description
This folder contains the automation script `install_aws_client.sh`, designed for Ubuntu systems using the `apt` package manager. The script automates the installation of the AWS Command Line Interface while ensuring the user has root privileges and that no naming conflicts exist for the `aws` command.

## Files
- `install_aws_client.sh`: The main installation script that handles dependency checks, user confirmation, and the silent installation process.

## Installation Instructions

- Ensure the script is executable: `chmod +x install_aws.sh`
- Run with sudo: `sudo ./install_aws_client.sh`

## Citations
- [AWS Command Line Interface Installation Guide](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html): Used for Linux installation commands and dependency requirements.
- [Bash Reference Manual - EUID](https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html): Used to identify the correct variable for checking root user status.
- Gemini 3 Flash: Used to ensure confirmation message and test command is implemented properly. Prompt: "This is a script that is supposed to automate the AWS command line interface installation while confirming user privleges and checking name conflicts if any. Does the last portion showcasing the echo commands for completion look correct or does the sturcture need changed at all?"
