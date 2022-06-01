#!/bin/sh
export TERMINAL="setsid -f st"
export BROWSER="setsid -f qutebrowser"
export DOCVIEWER="setsid -f zathura"
export PICVIEWER="setsid -f nsxiv"
export MENU="dmenu -i -l 44"
export YANKER="xclip -r"

export SFEED_YANKER="$YANKER"

# keyboard
setxkbmap -model pc105 -layout de
xmodmap $HOME/.config/X11/Xmodmap
numlockx &
sxhkd &

# daemons
pgrep transmission-da || transmission-daemon &
lxpolkit &
gnirehtet autorun &
#calibre-server &
#bitcoind &
#electrum-personal-server ~/.config/electrum-personal-server/config.ini &
udiskie &

# appearance
#picom &
xrdb -merge .config/X11/Xresources
#xrdb -merge .cache/wal/colors.Xresources
. "${HOME}/.cache/wal/colors.sh"
#hsetroot -solid "#000000"
xwallpaper --zoom ~/pictures/wallpaper
#dwmblocks &
dunst \
		-nfr "${color3}" \
	-nb "${color0}" \
	-nf "${color7}" &
~/.local/bin/hdmi-hotplug &
unclutter &

while true; do
	xsetroot -name "$(date '+%F %R')"
	sleep 2
done &

exec dwm
