# Panel 
PW=300
PH=48
PX=533
PY=372

echo "%{c}  %{A:p:}Shutdown%{A}  %{A:r:}Reboot%{A}  %{A:s:}Suspend%{A}  %{A:b:}Exit%{A}  " | lemonbar -g ${PW}x${PH}+${PX}+${PY} -f "$FONT3" -f "$FONT5" -B "$BG" -F "$FG" -dp | \
    while :; do
        read line
        case $line in 
            'b')
                p=$(pgrep -n lemonbar)
                kill $p 
                exit 
                ;;
            's')
                sudo /usr/sbin/pm-suspend &
                p=$(pgrep -n lemonbar)
                kill $p 
                exit                
                ;;
            'p')
                sudo /sbin/shutdown -h now
                exit
                ;;
            'r')
                sudo /sbin/shutdown -r now
                exit
                ;;
        esac
    done
