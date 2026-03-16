#!/bin/bash

# define paths
REPO_ALIAS="$HOME/dotfiles/homefiles/.bash_aliases"
TARGET_ALIAS="$HOME/.bash_aliases"
BASHRC="$HOME/.bashrc"

echo "Setting up bash customizations..."

# checks if curl is installed for the myip alias
if ! command -v curl &> /dev/null; then
    echo "Note: 'curl' is not installed. The 'myip' alias will require it."
fi

# 1.) handles the symbolic linking
if [ -L "$TARGET_ALIAS" ]; then
    echo "Symlink already exists. Skipping link creation."
elif [ -f "$TARGET_ALIAS" ]; then
    echo "Backing up existing .bash_aliases to .bash_aliases.bak"
    mv "$TARGET_ALIAS" "$TARGET_ALIAS.bak"
    ln -s "$REPO_ALIAS" "$TARGET_ALIAS"
else
    echo "Creating symbolic link for .bash_aliases"
    ln -s "$REPO_ALIAS" "$TARGET_ALIAS"
fi

# 2.) ensure .bashrc sources .bash_aliases
# also checks if the sourcing logic already exists in .bashrc
if ! grep -q "if [ -f ~/.bash_aliases ]; then" "$BASHRC"; then
    echo "Adding sourcing logic to ~/.bashrc"
    cat <<EOT >> "$BASHRC"

    

# load the custom aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
EOT
fi

echo "-------------------------------------------------------"
echo "DONE! Please run 'source ~/.bashrc' to apply changes."
echo "-------------------------------------------------------"
