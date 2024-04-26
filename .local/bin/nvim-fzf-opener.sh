#!/usr/bin/env bash

file="$(\
  find $HOME/.config $HOME/.local/bin -type f |\
  sed "s|^$HOME/||" |\
  fzf -e --preview 'bat --color=always {}'\
  )"

if [[ "$file" == "" ]]; then
  exit 0;
fi


nvim $HOME/$file
