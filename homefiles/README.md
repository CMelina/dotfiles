# Homefiles Customization #

This folder contains the configuration files and deployment scripts for Task 2 of the Dotfiles assignment.

## Files
- `.bash_aliases`: Contains custom shortcuts and safety commands for the bash shell.
- `deploy_bash.sh`: A script that creates a symbolic link from the repository to the home directory and updates `~/.bashrc`.

## Citations
- Safety Aliases: Used `cp -i` and `mv -i` patterns from [30 okay aliases](https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html) to prevent accidental file overwrites.
- Navigation & IP: Adopted the `myip` and directory nesting aliases (`..`, `...`) from [The Ultimate B.A. .bashrc file](https://gist.github.com/zachbrowne/8bc414c9f30192067831fafebd14255c).
- Generative AI: Gemini 3 Flash was used to assist with structuring the `deploy_bash.sh` logic.
- Prompt: "This is a bash script that creates a symbolic link for .bash_aliases and appends a source command to .bashrc if it doesn't already exist (pasted the file I made). Does the logic need further formatting for checking if the source logic exists within .bashrc?"
