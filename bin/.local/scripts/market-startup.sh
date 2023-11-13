#!/usr/bin/env bash
tmux_running=$(pgrep tmux)

api="/home/carri/workspace/market-api/"
front="/home/carri/workspace/market/"

tmux new-session -ds "api" -c $api -n 'neovim' "zsh -c 'docker compose up --detach;source ./venv/bin/activate;nvim .;zsh -i'" \
    \; new-window -c $api -n "psql" "zsh -c 'psql -h localhost -U admin market; zsh -i'" \
    \; previous-window  \
    && sleep 5 \
    && tmux new-session -ds "front" -c $front -n 'neovim' "zsh -c 'docker compose up --detach;nvim .;zsh -i'" \
    \; new-session -s "containers" -c $api -n 'api' "zsh -c 'docker logs api --follow;zsh -i'" \; switch-client -t api 
