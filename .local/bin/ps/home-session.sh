#!/usr/bin/env bash

selected_name="home"
tmux_running=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
    tmux new-session -s $selected_name -c 'cd $HOME'
    exit 0
fi

if ! tmux has-session -t=$selected_name 2> /dev/null; then
    tmux new-session -ds $selected_name -c 'cd $HOME'
fi
tmux switch-client -t $selected_name
