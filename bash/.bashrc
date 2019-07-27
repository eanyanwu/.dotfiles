#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -Al --color=auto'
#PS1='[\u@\h \W]\$ '


# Environment variables

# Wayland Compatibility

# Firefox needs this to work 
export MOZ_ENABLE_WAYLAND=1

# bmenu needs this to work 
export BEMENU_BACKEND=wayland

# Zeal needs this to work
export QT_QPA_PLATFORM=wayland
