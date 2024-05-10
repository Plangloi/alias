#!/bin/bash

# Step 1: Define your aliases
aliases=(

"alias_grep='grep --color=auto'" # Search for a pattern inside a file (with color highlighting)

"alias_cd_up='cd ..'" # Navigate up one directory level

"alias_cd_up_up='cd ../..'" # Navigate up two directory levels

"alias_ll='ls -la'" # List all files and directories (including hidden ones) with detailed information

"alias_cd_up_again='cd ..'" # Navigate up one directory level (duplicate of alias_cd_up)

"alias_mkdir='mkdir -pv'" # Create a directory and any necessary parent directories, with verbose output

"alias_vi='vim'" # Open the Vim text editor

"alias_sudo_vi='sudo vi'" # Open the Vim text editor with superuser privileges

"alias_edit='vim'" # Open the Vim text editor (duplicate of alias_vi)

"alias_nvim='nvim'" # Open the Neovim text editor

"alias_ping='ping -c 6'" # Ping a host with a limit of 6 packets

"alias_ports='netstat -tulanp'" # List all listening ports and associated processes

"alias_apt_get='sudo apt-get'" # Run the apt-get command with superuser privileges

"alias_apt_get_yes='sudo apt-get --yes'" # Run the apt-get command with superuser privileges and automatically answer "yes" to prompts

"alias_update='sudo apt-get update && sudo apt-get upgrade'" # Update package lists and upgrade installed packages

"alias_reboot='sudo /sbin/reboot'" # Reboot the system with superuser privileges

"alias_poweroff='sudo /sbin/poweroff'" # Power off the system with superuser privileges

"alias_halt='sudo /sbin/halt'" # Halt the system with superuser privileges

"alias_shutdown='sudo /sbin/shutdown'" # Shutdown the system with superuser privileges

"alias_cpuinfo='lscpu'" # Display CPU information

"alias_df='df -H'" # Display disk usage with human-readable units

"alias_du='du -ch'" # Display disk usage with human-readable units and a grand total

"alias_http='python3 -m http.server 8080'" # Start a simple HTTP server on port 8080

"alias_me='hostname -I'" # Display the IP address of the current host
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
