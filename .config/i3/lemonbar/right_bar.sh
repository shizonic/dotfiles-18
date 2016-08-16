#!/bin/bash


source $HOME/.config/i3/lemonbar/config.sh

# Panel 
PW=460
PH=24
PX=895
PY=12


#Actions

# Functions

mail() {
    msg=`python ~/.bin/gmail.py`
	echo "%{F$WHITE} %{F$MAGENTA}${msg}"
}

cpu(){
	cpu=$(top -bn1 | grep load | awk '{printf "%.2f\n", $(NF-2)}')
	echo "%{F$WHITE} %{F$MAGENTA}${cpu}%"
}	

ram(){
	ram=$(free -m | awk 'NR==2{printf " %s/%sMB ", $3,$2 }')
	echo "%{F$GREEN} %{F$MAGENTA}${ram}"
}
 clock(){
  clock=$(date "+%d %b %Y %H:%M")
	echo "%{F$GREEN} %{F$MAGENTA}${clock}"
}

vol(){
  volumeState=$(ponymix get-volume)

    # Determine volume icon depending on the level of volume.
    if [[ ${volumeState} -eq 0 ]]; then
        volumeIcon=""
    elif [[ ${volumeState} -le 50 ]]; then
        volumeIcon=""
    else
        volumeIcon=""
    fi

    if $(ponymix is-muted); then
        volumeColor=${RED}
    else
        volumeColor=${GREEN}
    fi

    echo "%{F$volumeColor}${volumeIcon} %{F$MAGENTA}${volumeState}%"
}

pow(){
	if [[ -d /sys/class/power_supply/BAT1 ]]; then

        batteryState=$(cat /sys/class/power_supply/BAT1/status)
        batteryPower=$(cat /sys/class/power_supply/BAT1/capacity)

        # Determine battery icon based on capacity and state.
        if [[ "${batteryState}" == "Discharging" && ${batteryPower} -le 20 ]]; then
            batteryIcon=""
            batteryColor=${RED}
        elif [[ "${batteryState}" == "Discharging" && ${batteryPower} -le 40 ]]; then
            batteryIcon=""
            batteryColor=${BLUE}
        elif [[ "${batteryState}" == "Discharging" && ${batteryPower} -le 60 ]]; then
            batteryIcon=""
            batteryColor=${CYAN}
        elif [[ "${batteryState}" == "Discharging" && ${batteryPower} -le 80 ]]; then
            batteryIcon=""
            batteryColor=${GREEN}
        elif [[ "${batteryState}" == "Discharging" && ${batteryPower} -le 100 ]]; then
            batteryIcon=""
            batteryColor=${MAGENTA}
        else
            batteryIcon=""
            batteryColor=${WHITE}
        fi
        echo "%{F$batteryColor}${batteryIcon} %{F$MAGENTA}${batteryPower}%"
    else
        echo "%{F$red}No Battery Detected"
    fi
}

while :; do 	
	 echo " $(mail) $(vol) $(cpu) $(ram) $(pow) $(clock)"
	 sleep .5
done | lemonbar -g ${PW}x${PH}+${PX}+${PY} -f "$FONT1" -f "$FONT2" -B "$BG" -F "$FG" -p -d  | \
    while :; do read line; eval $line; done &
