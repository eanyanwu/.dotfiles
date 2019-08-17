# Set the utf-8 locale thingy :)
export LAN=en_US.UTF-8

# Set the location of the korn shell
export ENV=$HOME/.config/ksh/.kshrc

# Load the Xresources file
xrdb -load $HOME/.Xresources

# Speed up the mouse a lil bit
xset m 5 2

# Set mi background picture
$HOME/.fehbg &

# Start up the status bar
i3status | dzen2 -h 40 -e "" &

# Start up the window manager
cwm
