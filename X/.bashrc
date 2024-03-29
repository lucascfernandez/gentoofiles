# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
source /usr/share/fzf/key-bindings.bash

# Local pip to PATH 
export PATH="${PATH}:${HOME}/.local/bin/"
export EDITOR="emacsclient-emacs-28 -c"
export TERM="st"

# Alias
alias l="ls -bapX"
alias ll="ls -lapX"
alias kdenlive="flatpak run org.kde.kdenlive"
alias onlyoffice="flatpak run org.onlyoffice.desktopeditors"
alias xmind="flatpak run net.xmind.XMind8"
alias reboot="doas reboot"
alias shutdown="doas shutdown -h now"
