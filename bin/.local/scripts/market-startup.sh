#!/usr/bin/env bash
tmux_running=$(pgrep tmux)

market_api="/home/carri/workspace/market-api/"
market="/home/carri/workspace/market/"

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
  tmux new-session -s "market-api" -c $market_api -n 'neovim' "zsh -c 'source ./venv/bin/activate;nvim .; zsh -i'" \; new-window -c $market_api -n "docker" "zsh -c 'docker compose up; zsh -i'" \; previous-window \; new-session -s "market" -c $market -n 'neovim' "zsh -c 'nvim .; zsh -i'" \; new-window -c $market -n "vite" "zsh -c 'yarn dev; zsh -i'" \; previous-window \; new-session -s "home" -c "/home/carri/" -n "zsh"
  exit 0
fi

if ! tmux has-session -t=$selected_name 2> /dev/null; then
  tmux new-session -ds "market-api" -c $market_api -n 'neovim' "zsh -c 'source ./venv/bin/activate; nvim .; zsh -i'" \; new-window -c $market_api -n "docker" "zsh -c 'docker compose up; zsh -i'" \; previous-window
  tmux new-session -ds "market" -c $market -n 'neovim' "zsh -c 'nvim .; zsh -i'" \; new-window -c $market -n "vite" "zsh -c 'yarn dev; zsh -i'" \; previous-window
fi


tmux switch-client -t "market"
