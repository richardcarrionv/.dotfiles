# .dotfiles

## Dependencies
```
alacritty tmux neovim polybar rofi i3 zsh fzf feh
```
- Espanso

## Installation

```
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```
```
git clone --bare https://github.com/noesrichard/.dotfiles.git $HOME/.dotfiles
```
```
dots checkout
```
```
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```
```
dots config --local status.showUntrackedFiles no
```


### Additional
- oh-my-zsh
- zsh-vi-mode
- tpm
- jq 

## Natural Scrolling & Tapping
sudo nvim /usr/share/X11/xorg.conf.d/40-libinput.conf
```
Option "NaturalScrolling" "true"
Option "Tapping" "true"
```

```
git config --global credential.helper 'store --file ~/.my-credentials'
```
