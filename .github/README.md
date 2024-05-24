# .dotfiles

## Dependencies
```
alacritty tmux neovim polybar rofi i3 zsh fzf feh xrandr sxhkd xclip
```
- Espanso

## Installation
```
alias dots='/usr/bin/git --git-dir=$HOME/dev/.dotfiles/ --work-tree=$HOME'
```
```
git clone --bare https://github.com/richardcarrionv/.dotfiles.git $HOME/dev/.dotfiles
```
```
dots checkout
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
git config --global credential.helper 'store --file ~/.config/git/.credentials'
```
