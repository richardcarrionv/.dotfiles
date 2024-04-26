#!/bin/bash

tmuxp load --yes /home/carri/.config/tmux/tesis.yaml

i3-msg 'workspace 4; exec mupdf-gl /home/carri/workspace/tesis/out/main.pdf; exec alacritty -e tmux attach -t tesis'
sleep 1
i3-msg 'resize grow width 20 px or 20 ppt'
