# .dotfiles

## Dependencies
```
alacritty tmux neovim polybar rofi i3 zsh fzf feh
```
## Installation

```
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
git clone --bare <git-repo-url> $HOME/.dotfiles
dots checkout
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

### Additional
- oh-my-zsh
- zsh-vi-mode
- tpm

## Natural Scrolling & Tapping
sudo nvim /usr/share/X11/xorg.conf.d/40-libinput.conf
```
Option "NaturalScrolling" "true"
Option "Tapping" "true"
```
