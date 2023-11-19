#!/bin/bash

tmuxp load --yes /home/carri/.config/tmux/tesis.yaml

i3-msg 'workspace 4; exec alacritty -e tmux attach -t tesis'
