#!/bin/sh

BAR_HEIGHT=14  # polybar height
BORDER_SIZE=10  # border size from your wm settings
YAD_WIDTH=400  # 222 is minimum possible value
YAD_HEIGHT=300

case "$1" in
calendar)
    if [ "$(xdotool getwindowfocus getwindowname)" = "yad-calendar" ]; then
        exit 0
    fi

    eval "$(xdotool getmouselocation --shell)"
    eval "$(xdotool getdisplaygeometry --shell)"

    # X
    if [ "$((X + YAD_WIDTH / 2 + BORDER_SIZE))" -gt "$WIDTH" ]; then #Right side
        : $((pos_x = WIDTH - YAD_WIDTH - BORDER_SIZE))
    elif [ "$((X - YAD_WIDTH / 2 - BORDER_SIZE))" -lt 0 ]; then #Left side
        : $((pos_x = BORDER_SIZE))
    else #Center
        : $((pos_x = X - YAD_WIDTH / 2))
    fi

    # Y
    if [ "$Y" -gt "$((HEIGHT / 2))" ]; then #Bottom
        : $((pos_y = HEIGHT - YAD_HEIGHT - BAR_HEIGHT - BORDER_SIZE))
    else #Top
        : $((pos_y = BAR_HEIGHT + BORDER_SIZE))
    fi

    yad --calendar --undecorated --fixed \
        --width="$YAD_WIDTH" --height="$YAD_HEIGHT" --posx="$pos_x" --posy="$pos_y" \
        --title="yad-calendar" >/dev/null &
    ;;
all)
    echo "$(date +"%A  %d-%m-%Y - EC %H:%M") - NY $(TZ='America/New_York' date +"%H") - LN $(TZ='Europe/London' date +"%H") - VN $(TZ='America/Vancouver' date +"%H")"
    ;;
*)
    # echo "$(date +"%A  %d-%m-%Y - %H:%M:%S") - NY $(TZ='America/New_York' date +"%H") - LN $(TZ='Europe/London' date +"%H") - VA $(TZ='America/Vancouver' date +"%H")"
    echo "$(date +"%A %d/%m/%Y - EC %H:%M:%S")"
    ;;
esac
