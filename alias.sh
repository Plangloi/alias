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
    "alias apt-get="sudo apt-get""
    "alias updatey="sudo apt-get --yes""
    "alias update='sudo apt-get update && sudo apt-get upgrade'"
    "alias reboot='sudo /sbin/reboot'"
    "alias poweroff='sudo /sbin/poweroff'"
    "alias halt='sudo /sbin/halt'"
    "alias shutdown='sudo /sbin/shutdown'"
    "alias cpuinfo='lscpu'"
    "alias df='df -H'"
    "alias du='du -ch'"
    
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





============================================================

# #21: Control web servers
# # also pass it via sudo so whoever is admin can reload it without calling you #
# alias nginxreload='sudo /usr/local/nginx/sbin/nginx -s reload'
# alias nginxtest='sudo /usr/local/nginx/sbin/nginx -t'
# alias lightyload='sudo /etc/init.d/lighttpd reload'
# alias lightytest='sudo /usr/sbin/lighttpd -f /etc/lighttpd/lighttpd.conf -t'
# alias httpdreload='sudo /usr/sbin/apachectl -k graceful'
# alias httpdtest='sudo /usr/sbin/apachectl -t && /usr/sbin/apachectl -t -D DUMP_VHOSTS'
# #22: Alias into our backup stuff
# # if cron fails or if you want backup on demand just run these commands #
# # again pass it via sudo so whoever is in admin group can start the job #
# # Backup scripts #
# alias backup='sudo /home/scripts/admin/scripts/backup/wrapper.backup.sh --type local --taget /raid1/backups'
# alias nasbackup='sudo /home/scripts/admin/scripts/backup/wrapper.backup.sh --type nas --target nas01'
# alias s3backup='sudo /home/scripts/admin/scripts/backup/wrapper.backup.sh --type nas --target nas01 --auth /home/scripts/admin/.authdata/amazon.keys'
# alias rsnapshothourly='sudo /home/scripts/admin/scripts/backup/wrapper.rsnapshot.sh --type remote --target nas03 --auth /home/scripts/admin/.authdata/ssh.keys --config /home/scripts/admin/scripts/backup/config/adsl.conf'
# alias rsnapshotdaily='sudo  /home/scripts/admin/scripts/backup/wrapper.rsnapshot.sh --type remote --target nas03 --auth /home/scripts/admin/.authdata/ssh.keys  --config /home/scripts/admin/scripts/backup/config/adsl.conf'
# alias rsnapshotweekly='sudo /home/scripts/admin/scripts/backup/wrapper.rsnapshot.sh --type remote --target nas03 --auth /home/scripts/admin/.authdata/ssh.keys  --config /home/scripts/admin/scripts/backup/config/adsl.conf'
# alias rsnapshotmonthly='sudo /home/scripts/admin/scripts/backup/wrapper.rsnapshot.sh --type remote --target nas03 --auth /home/scripts/admin/.authdata/ssh.keys  --config /home/scripts/admin/scripts/backup/config/adsl.conf'
# alias amazonbackup=s3backup
# #23: Desktop specific – play avi/mp3 files on demand
# ## play video files in a current directory ##
# # cd ~/Download/movie-name
# # playavi or vlc
# alias playavi='mplayer *.avi'
# alias vlc='vlc *.avi'
 
# # play all music files from the current directory #
# alias playwave='for i in *.wav; do mplayer "$i"; done'
# alias playogg='for i in *.ogg; do mplayer "$i"; done'
# alias playmp3='for i in *.mp3; do mplayer "$i"; done'
 
# # play files from nas devices #
# alias nplaywave='for i in /nas/multimedia/wave/*.wav; do mplayer "$i"; done'
# alias nplayogg='for i in /nas/multimedia/ogg/*.ogg; do mplayer "$i"; done'
# alias nplaymp3='for i in /nas/multimedia/mp3/*.mp3; do mplayer "$i"; done'
 
# # shuffle mp3/ogg etc by default #
# alias music='mplayer --shuffle *'
# #24: Set default interfaces for sys admin related commands
# vnstat is console-based network traffic monitor. dnstop is console tool to analyze DNS traffic. tcptrack and iftop commands displays information about TCP/UDP connections it sees on a network interface and display bandwidth usage on an interface by host respectively.

# work on wlan0 by default #
# Only useful for laptop as all servers are without wireless interface
# alias iwconfig='iwconfig wlan0'
# #25: Get system memory, cpu usage, and gpu memory info quickly
# ## pass options to free ##
# alias meminfo='free -m -l -t'
 
# ## get top process eating memory
# alias psmem='ps auxf | sort -nr -k 4'
# alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
# ## get top process eating cpu ##
# alias pscpu='ps auxf | sort -nr -k 3'
# alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
 
# ## Get server cpu info ##
# alias cpuinfo='lscpu'
 
## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ##
 
# ## get GPU ram on desktop / laptop##
# alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'
# #26: Control Home Router
# The curl command can be used to reboot Linksys routers.

# # Reboot my home Linksys WAG160N / WAG54 / WAG320 / WAG120N Router / Gateway from *nix.
# alias rebootlinksys="curl -u 'admin:my-super-password' 'http://192.168.1.2/setup.cgi?todo=reboot'"
 
# Reboot tomato based Asus NT16 wireless bridge
# alias reboottomato="ssh admin@192.168.1.1 /sbin/reboot"
# #27 Resume wget by default
# The GNU Wget is a free utility for non-interactive download of files from the Web. It supports HTTP, HTTPS, and FTP protocols, and it can resume downloads too:

# ## this one saved by butt so many times ##
# alias wget='wget -c'
#28 Use different browser for testing website
# ## this one saved by butt so many times ##
# alias ff4='/opt/firefox4/firefox'
# alias ff13='/opt/firefox13/firefox'
# alias chrome='/opt/google/chrome/chrome'
# alias opera='/opt/opera/opera'
 
# # #default ff
# alias ff=ff13
 
# #my default browser
# alias browser=chrome
# #29: A note about ssh alias
# Do not create ssh alias, instead use ~/.ssh/config OpenSSH SSH client configuration files. It offers more option. An example:

# Host server10
#   Hostname 1.2.3.4
#   IdentityFile ~/backups/.ssh/id_dsa
#   user foobar
#   Port 30000
#   ForwardX11Trusted yes
#   TCPKeepAlive yes
# You can now connect to peer1 using the following syntax:
# $ ssh server10

# #30: It’s your turn to share…
# ## set some other defaults ##
# alias df='df -H'
# alias du='du -ch'
 
# # top is atop, just like vi is vim
# alias top='atop'
 
# ## nfsrestart  - must be root  ##
# ## refresh nfs mount / cache etc for Apache ##
# alias nfsrestart='sync && sleep 2 && /etc/init.d/httpd stop && umount netapp2:/exports/http && sleep 2 && mount -o rw,sync,rsize=32768,wsize=32768,intr,hard,proto=tcp,fsc natapp2:/exports /http/var/www/html &&  /etc/init.d/httpd start'
 
# ## Memcached server status  ##
# alias mcdstats='/usr/bin/memcached-tool 10.10.27.11:11211 stats'
# alias mcdshow='/usr/bin/memcached-tool 10.10.27.11:11211 display'
 
# ## quickly flush out memcached server ##
# alias flushmcd='echo "flush_all" | nc 10.10.27.11 11211'
 
# ## Remove assets quickly from Akamai / Amazon cdn ##
# alias cdndel='/home/scripts/admin/cdn/purge_cdn_cache --profile akamai'
# alias amzcdndel='/home/scripts/admin/cdn/purge_cdn_cache --profile amazon'
 
# ## supply list of urls via file or stdin
# alias cdnmdel='/home/scripts/admin/cdn/purge_cdn_cache --profile akamai --stdin'
# alias amzcdnmdel='/home/scripts/admin/cdn/purge_cdn_cache --profile amazon --stdin'
