#!/bin/bash
# Author: ipatmbp4
# Date: 2019-03-18
# Description: Alias for bash

aliases() {
	alias_grep='grep --color=auto'
	alias_cd_up='cd ..'
	alias_cd_up_up='cd ../..'
	alias_ll='ls -la'
	alias_cd_up_again='cd ..'
	alias_mkdir='mkdir -pv'
	alias_vi='vim'
	alias_sudo_vi='sudo vi'
	alias_edit='vim'
	alias_nvim='nvim'
	alias_ping='ping -c 6'
	alias_ports='netstat -tulanp'
	alias_apt_get='sudo apt-get'
	alias_apt_get_yes='sudo apt-get --yes'
	alias_update='sudo apt-get update && sudo apt-get upgrade'
	alias_reboot='sudo /sbin/reboot'
	alias_poweroff='sudo /sbin/poweroff'
	alias_halt='sudo /sbin/halt'
	alias_shutdown='sudo /sbin/shutdown'
	alias_cpuinfo='lscpu'
	alias_df='df -H'
	alias_du='du -ch'
	alias_http='python3 -m http.server 8080'
	alias_me='hostname -I'
}

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

# Step 5: Tell the user to reload their terminal
echo "Please reload your terminal or run 'source ~/.bashrc' to apply the changes."

echo "$aliases"
