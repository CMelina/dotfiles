# directory navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'

# prompts before overwriting or deleting
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# better listing (use ls colors)
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# networking and utility
alias myip='curl ifconfig.me'
alias path='echo -e ${PATH//:/\\n}' # Displays PATH one per line

# shortcuts for fugitive plugin
alias gst='git status'
alias gcm='git commit -m'
