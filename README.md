# Dotfile Assignment #

## Task 1 ##

- Vundle: https://github.com/VundleVim/Vundle.vim
- Theme (Badwolf): https://github.com/sjl/badwolf
- Plugin (Fugitive): https://github.com/tpope/vim-fugitive

## Config Notes ##

The `.vimrc` and `deploy.sh` have been tested and it works successfully. However, the theme I chose (Badwolf) did not want to cooperate. While the plugins are installed properly through Vundle (verified by `:PluginInstall`), I had to consult Gemini to learn that some terminal environments require additional `TERM` variable configurations to display the theme correctly. I have been using the Konsole locally on my device (Kubuntu 24.04), but no matter what I tried it simply showed the plain vim theming. The logic for the theme is present at the end of the `.vimrc`.
