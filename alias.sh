#!/bin/bash

# Step 1: Define your aliases
aliases=(

        "alias grep='grep --color=auto' # Search for a pattern inside a file (with color highlighting)"

        "alias ll='ls -la' # List all files and directories (including hidden ones) with detailed information"

        "alias cd_up_again='cd ..' # Navigate up one directory level (duplicate of alias_cd_up)"

        "alias mkdir='mkdir -pv' # Create a directory and any necessary parent directories, with verbose output"

        "alias vi='vim' # Open the Vim text editor"

        "alias sudo_vi='sudo vi' # Open the Vim text editor with superuser privileges"

        "alias edit='vim' # Open the Vim text editor (duplicate of alias_vi)"

        "alias nv='nvim' # Open the Neovim text editor"

        "alias ping='ping -c 6' # Ping a host with a limit of 6 packets"

        "alias ports='netstat -tulanp' # List all listening ports and associated processes"

        "alias apt_get='sudo apt-get' # Run the apt-get command with superuser privileges"

        "alias apt_get_yes='sudo apt-get --yes' # Run the apt-get command with superuser privileges and automatically answer "yes" to prompts"

        "alias update='sudo apt-get update && sudo apt-get upgrade' # Update package lists and upgrade installed packages"

        "alias reboot='sudo /sbin/reboot' # Reboot the system with superuser privileges"

        "alias poweroff='sudo /sbin/poweroff' # Power off the system with superuser privileges"

        "alias halt='sudo /sbin/halt' # Halt the system with superuser privileges"

        "alias shutdown='sudo /sbin/shutdown' # Shutdown the system with superuser privileges"

        "alias cpuinfo='lscpu' # Display CPU information"

        "alias df='df -H' # Display disk usage with human-readable units"

        "alias du='du -ch' # Display disk usage with human-readable units and a grand total"

        "alias http_S='python3 -m http.server 8080' # Start a simple HTTP server on port 8080"

        "alias me='hostname -I' # Display the IP address of the current host"
        
        "alias install='sudo apt install' #install
)

# Check if .bashrc file exists
if [ -f ~/.bashrc ]; then
	echo ".bashrc file found. Adding aliases..."
 	cp ~/.bashrc ~/.bashrc.bk
  	echo "copy of bashrc done .bashrc.bk"

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
