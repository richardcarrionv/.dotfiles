#!/bin/bash
i3-msg 'workspace 4; exec alacritty -e sh -C /home/carri/bin/.local/scripts/market-startup.sh'
sleep 1
i3-msg 'workspace 7; exec google-chrome --new-window http://localhost:3000 http://localhost:3000/dashboard http://localhost/api/v1/docs'
sleep 3
i3-msg 'workspace 4'
