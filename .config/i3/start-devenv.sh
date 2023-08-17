#!/bin/bash

i3-msg 'workspace 8; exec google-chrome --new-window http://localhost:3000 http://localhost/api/v1/console/docs'
sleep 0.5
i3-msg 'workspace 5; exec google-chrome --new-window https://linear.app/noesrichard/team/PU/cycle/active'
sleep 0.5
i3-msg 'workspace 2; exec alacritty -e sh -C /home/carri/bin/.local/scripts/market-startup.sh'
