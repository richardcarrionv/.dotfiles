#!/usr/bin/env bash

directories=$(find ~ -type d -not -name '.*' -not -path '*.*' | sed 's|^/home/carri/||')

selected_directory=$(echo "$directories" | rofi -dmenu -i -matching fuzzy)

echo $selected_directory

if [[ "$selected_directory" == "" ]]; then
  exit 0;
fi

if [[ "$selected_directory" == "/home/carri" ]]; then
  thunar $HOME
  exit 0;
fi

if [[ -d "$HOME/$selected_directory" ]]; then
    thunar "$HOME/$selected_directory"
else
    echo "Directory does not exist: $selected_directory"
fi
exit 0;
