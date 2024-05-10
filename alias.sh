#!/bin/bash

# Step 1: Define your aliases
aliases=(
	"alias ll='ls -alF'"
	"alias grep='grep --color=auto'"
	"alias ..='cd ..'"
	"alias ...='cd ../../../'"
	"alias ll='ls -la'"
	"alias cd..='cd ..'"
	"alias mkdir='mkdir -pv'"
	"alias vi='vim'"
	"alias svi='sudo vi'"
	"alias edit='vim'"
	"alias nv='nvim'"
	"alias ping='ping -c 6'"
	"alias ports='netstat -tulanp'"
	"alias ports='netstat -tulanp'"

)

# Check if .bashrc file exists
if [ -f ~/.bashrc ]; then
	echo ".bashrc file found. Adding aliases..."

	# Step 3 & 4: Append aliases to .bashrc
	for alias_cmd in "${aliases[@]}"; do
		echo "$alias_cmd" >>~/.bashrc
	done

	echo "Aliases added to .bashrc."
else
	echo ".bashrc file not found. Creating a new one..."

	# Step 3 & 4: Create a new .bashrc file and add aliases
	touch ~/.bashrc
	for alias_cmd in "${aliases[@]}"; do
		echo "$alias_cmd" >>~/.bashrc
	done

	echo "New .bashrc file created with aliases."
fi
