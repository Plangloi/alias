#!/bin/bash

# Step 1: Define your aliases
aliases=(
## Colorize the grep command output for ease of use (good for log files)##
    "alias grep='grep --color=auto'"
    "alias ..='cd ..'"
    "alias ...='cd ../../../'"
    "alias ll='ls -la'"
    "alias cd..='cd ..'"
    #Create parent directories on demand
    "alias mkdir='mkdir -pv'"
    "alias vi='vim'"
    "alias svi='sudo vi'"
    "alias edit='vim'"
    "alias nv='nvim'"
    "alias ping='ping -c 6'"
    "alias ports='netstat -tulanp'"
    "alias ports='netstat -tulanp'"
    "alias apt-get='sudo apt-get'"
    "alias updatey='sudo apt-get --yes'"
    "alias update='sudo apt-get update && sudo apt-get upgrade'"
    "alias reboot='sudo /sbin/reboot'"
    "alias poweroff='sudo /sbin/poweroff'"
    "alias halt='sudo /sbin/halt'"
    "alias shutdown='sudo /sbin/shutdown'"
    "alias cpuinfo='lscpu'"
    "alias df='df -H'"
    "alias du='du -ch'"
    "alias http='python3 -m http.server 8080'"
    "alias me='hostname -I'"
    
    
)

# Check if .bashrc file exists
if [ -f ~/.bashrc ]; then
    echo ".bashrc file found. Adding aliases..."

    # Step 3 & 4: Append aliases to .bashrc
    for alias_cmd in "${aliases[@]}"; do
        echo "$alias_cmd" >> ~/.bashrc
    done

    echo "Aliases added to .bashrc."
else
    echo ".bashrc file not found. Creating a new one..."

    # Step 3 & 4: Create a new .bashrc file and add aliases
    touch ~/.bashrc
    for alias_cmd in "${aliases[@]}"; do
        echo "$alias_cmd" >> ~/.bashrc
    done

    echo "New .bashrc file created with aliases."
fi

# Step 5: Tell the user to reload their terminal
echo "Please reload your terminal or run 'source ~/.bashrc' to apply the changes."

echo "$aliases"
