#!/bin/bash

tmuxp load --yes -d /home/carri/.config/tmux/market-frontend.yaml
tmuxp load --yes /home/carri/.config/tmux/market-api.yaml

i3-msg 'workspace 4; exec alacritty -e tmux attach -t api'
sleep 1
i3-msg 'workspace 5; exec google-chrome --new-window https://linear.app/noesrichard/team/PU/projects/all'
sleep 3
i3-msg 'workspace 7; exec google-chrome --new-window http://localhost:3000 http://localhost/api/v1/docs; exec brave-browser http://localhost:3000; exec firefox http://localhost:3000; layout stacked'
sleep 1
i3-msg 'workspace 4'
