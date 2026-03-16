# Homefiles Customization #

This folder contains the configuration files and automation scripts required to customize the Bash environment as part of dotfiles task 2. These files are designed to be managed via git and deployed to a user's home directory using symbolic links.

## Files

- `.bash_aliases`: A collection of shortcuts and safety overrides for the Bash shell.

- Navigation: Shortcuts for traversing directory levels (., .., ..., .3).

- Safety: Aliases for `cp`, `mv`, and `rm` that include the `-i` flag to prompt the user before overwriting or deleting files.

- Utilities: A `myip` command to fetch the public IP address and a path command to display the system PATH in a readable format.

- Git Integration: Shortcuts for git status `gst` and git commit `gcm` for the fugitive plugin.

- `deploy_bash.sh`: Automation script that handles the deployment of these customizations.

## Deployment Logic ##

The `deploy_bash.sh` script performs the following actions to ensure a seamless setup:

- It checks if a `.bash_aliases` file already exists in the home directory. If a physical file is found, it creates a backup named `.bash_aliases.bak` before creating a symbolic link to the repository file.

- It scans the ~`/.bashrc` file for existing sourcing logic. If missing, it appends a block of code to ensure `~/.bashrc` automatically loads the `.bash_aliases` file upon login.

- Environment Reload: The script prompts the user to run source `~/.bashrc` to apply the changes immediately without logging out.

## Installation ##

To deploy these files, run:

```
chmod +x deploy_bash.sh
./deploy_bash.sh
source ~/.bashrc
```

## Citations ##
- Used `cp -i` and `mv -i` patterns from the website [30 okay aliases](https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html) to prevent accidental file overwrites.
- Adopted the `myip` and directory nesting aliases (`..`, `...`) from the website [The Ultimate B.A. .bashrc file](https://gist.github.com/zachbrowne/8bc414c9f30192067831fafebd14255c).
- Generative AI: Gemini 3 Flash was used to assist with structuring the `deploy_bash.sh` logic. The prompt used was: "This is a bash script that creates a symbolic link for .bash_aliases and appends a source command to .bashrc if it does not already exist (and then pasted the file I made). Does the logic need further formatting for checking if the source logic exists within .bashrc?". The checker for `deploy_bash.sh` is based on Gemini's suggestion.
