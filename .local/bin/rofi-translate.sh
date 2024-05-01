#!/usr/bin/env bash

translation=""
echo -en "\0prompt\x1fTranslate\n"

translation=$(trans -brief "$@")

echo "$translation"

if [[ "$1" == "$translation" && -n $1 ]]; then
  coproc (echo -n $1 | xclip -selection clipboard & > /dev/null  2>&1)
  kill -9 $(pgrep rofi)
fi
