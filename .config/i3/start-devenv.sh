#!/bin/bash
i3-msg 'workspace 3; exec alacritty -e sh -C /home/carri/bin/.local/scripts/market-startup.sh'
sleep 0.5
i3-msg 'workspace 5; exec google-chrome --new-window https://linear.app/noesrichard/team/PU/cycle/active'
sleep 3
i3-msg 'workspace 7; exec google-chrome --new-window http://localhost:3000 http://localhost/api/v1/console/docs'
sleep 1
i3-msg 'workspace 3'
