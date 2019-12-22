# setxkbmap -option caps:none
# xmodmap ~/.Xmodmap


alias stickmount='sudo mount UUID=90A3-D1F6 /mnt -o umask=000'
alias stickumount='sudo umount UUID=90A3-D1F6'

# for vifm changing directory after quitting:
function vicd()
{
    local dst="$(command vifm --choose-dir -)"
    if [ -z "$dst" ]; then
        echo 'Directory picking cancelled/failed'
        return 1
    fi
    cd "$dst"
}

alias umount='sudo umount'
alias vifm=vicd
alias v=vicd
alias chromium='chromium > /dev/null 2>&1 &'
alias telegram-desktop='telegram-desktop > /dev/null 2>&1 &'
alias xterm='xterm  -fa 'inconsolata' -fs 24 -fg lightgray -bg black'

set -o vi
bindkey -v

bindkey -s jk '\e'
bindkey jk vi-cmd-mode

# Created by newuser for 5.4.2
# To enable the advanced completion system, you need to load the function
# compinit first.
autoload -U compinit && compinit

# ##################################################
# not working since vim8.0?... 
# bindkey -M menuselect 'h' vi-backward-char
# bindkey -M menuselect 'k' vi-up-line-or-history
# bindkey -M menuselect 'l' vi-forward-char
# bindkey -M menuselect 'j' vi-down-line-or-history
# ##################################################

zstyle ':completion:*' menu select

# [111]Fish provides a very powerful shell syntax highlighting. To use this
# in zsh, you can install [112]zsh-syntax-highlighting from offical
# repository and add following to your zshrc:

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# export KEYTIMEOUT=1

if [ "$TMUX" = "" ]; then tmux; fi
#    
#    
function google()
{
	ARG=""
	for i in $@; do
		ARG="$ARG+$i"
	done
	elinks 'www.duckduckgo.com/?q='$ARG
}

function nxor_listPackagesWithSize()
{
    expac -H M '%m\t%n' | sort -h
}

function nxor_changeBacklight()
{
   sudo su -c "echo $1 > /sys/class/backlight/intel_backlight/brightness" 
}
setxkbmap -layout us -variant altgr-intl
