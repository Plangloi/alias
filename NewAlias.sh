#!/bin/bash

# Step 1: Define your aliases
aliases=(
  # Colorize the grep command output for ease of use (good for log files)
  alias grep='grep --color=auto'  # Removed extra space before the quote

  # Shortcuts for navigating directories
  alias ..='cd ..'
  alias ...='cd ../../../'

  # Common command aliases
  alias ll='ls -la'
  alias ls='ls -l'  # Bonus alias for listing with details

  # Vim aliases
  alias vi='vim'
  alias svi='sudo vim'
  alias edit='vim'
  alias nv='nvim'

  # Network aliases
  alias ping='ping -c 6'
  alias ports='netstat -tulanp'  # Removed duplicate line

  # Package management aliases
  alias apt-get='sudo apt-get'
  alias updatey='sudo apt-get update && sudo apt-get upgrade'  # Combined update and upgrade
  alias update='sudo apt-get update'  # Separate alias for just update

  # System control aliases (be cautious!)
  alias reboot='sudo /sbin/reboot'
  alias poweroff='sudo /sbin/poweroff'
  alias halt='sudo /sbin/halt'
  alias shutdown='sudo /sbin/shutdown'

  # System info aliases
  alias cpuinfo='lscpu'
  alias df='df -H'
  alias du='du -ch'

  # Web server alias
  alias http='python3 -m http.server 8080'

  # My IP alias
  alias me='hostname -I'
)

# Rest of the script remains the same (checking .bashrc, adding aliases, etc.)

