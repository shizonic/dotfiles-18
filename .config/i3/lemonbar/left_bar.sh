#!/bin/bash

# mohabaks,  
# https://github.com/mohabaks
# left panel for lemonbar;specifical for current workspace.

source $HOME/.config/i3/lemonbar/config.sh

# Panel 
PW=100
PH=24
PX=12
PY=12


# Actions

menu(){ 
	echo " %{F$GREEN}❱%{F$WHITE}❱ "
}

ws(){
	ws=$(i3-msg -t get_outputs | sed 's/.*"current_workspace":"\([^"]*\)".*/\1/')
	echo "%{F$MAGENTA}${ws}"
}

while :; do 	
	 echo "$(menu) $(ws) "
	 sleep .5
done | lemonbar -g ${PW}x${PH}+${PX}+${PY} -f "$FONT1" -f "$FONT2" -B "$BG" -F "$FG" -p -d  | \
    while :; do read line; eval $line; done &
