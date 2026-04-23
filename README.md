# Dotfiles Project Repository #

This repository contains a collection of configuration files and automation scripts designed to streamline the setup of a Linux environment. It was developed as a multi-part project to manage Vim configurations, Bash aliases, and system-level software installations.

## Repository Contents

- `vim-config/`: Contains `.vimrc` configuration using the Vundle plugin manager, the Badwolf theme, and the Fugitive git plugin.
- `homefiles/`: Includes `.bash_aliases` for enhanced navigation and safety, along with a deployment script to link them to the home directory.
- `sys-installs/`: Features a robust, silent installation script for the AWS Command.

## Getting Started

### Prerequisites
- Tested on Kubuntu 24.04 (Linux).
- System-level installs require `sudo` privileges.
- Ensure `git`, `curl`, and `unzip` are installed for full functionality.

### Installation & Usage
1.  Clone the Repository:
    ```bash
    git clone [https://github.com/your-username/dotfiles.git](https://github.com/your-username/dotfiles.git)
    cd dotfiles
    ```
2.  Navigate to `homefiles/` and run `./deploy_bash.sh`.
3.  Navigate to `vim-config/` and run `./deploy.sh` to install Vundle and your plugins.
4.  Navigate to `sys-installs/` and run `sudo ./install_aws_client.sh` for a silent AWS CLI setup.

*For detailed logic and citations for each component, please refer to the README files within each specific subdirectory.*

## Retrospective & Improvements

### Improvements Made
Based on peer reviews and internal testing, the following updates were implemented:
- Synchronized the `sys-installs/README.md` with the actual script filename (`install_aws_client.sh`) to resolve potential confusion.
- Added the `#!/bin/bash` header to the AWS installation script to ensure it executes correctly across different shells.
- Added explanatory comments to `vim-config/deploy.sh` to clarify the Vundle installation and plugin deployment logic.

### Hypothetical Future Improvements
- Investigate `TERM` variable configurations in Kubuntu's Konsole to ensure the Badwolf theme renders colors accurately.
- Create a master `setup.sh` in the root directory that calls all sub-deployment scripts for an easier environment setup.
- Expand the Bash alias deployment script to handle a wider variety of existing `.bashrc` formatting.
