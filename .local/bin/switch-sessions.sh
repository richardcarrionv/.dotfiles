
current_session=$(tmux display-message -p '#S')

if [ $current_session == 'api' ]; then
  tmux switch-client -t 'front'
else
  tmux switch-client -t 'api'
fi
