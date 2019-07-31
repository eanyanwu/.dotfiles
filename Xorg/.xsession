# Set the utf-8 locale thingy :)
export LAN=en_US.UTF-8

# Load the Xresources file
xrdb -load $HOME/.Xresources

# Speed up the mouse a lil bit
xset m 5 2

# Set mi background picture
$HOME/.fehbg &

xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

# Start up the status bar
i3status | dzen2 -h 40 -e "" &

# Start up the window manager
cwm
