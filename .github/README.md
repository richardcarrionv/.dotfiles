# .dotfiles

## Dependencies
```
alacritty tmux neovim polybar rofi i3 zsh fzf feh xrandr sxhkd xclip qalc jq yad xdotool
```

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
- [Espanso](https://espanso.org/docs/install/linux/#appimage-x11) 
- [tpm](https://github.com/tmux-plugins/tpm)
    - `git clone https://github.com/tmux-plugins/tpm ~/.local/share/tpm/`

## Themes
[GTK theme https://draculatheme.com/gtk](https://draculatheme.com/gtk) 
This goes to `$HOME/.local/share/themes`

[Icons https://github.com/PapirusDevelopmentTeam/papirus-icon-theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) 
```bash
wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="$HOME/.local/share/icons" sh
```


## Natural Scrolling & Tapping
sudo nvim /usr/share/X11/xorg.conf.d/40-libinput.conf
```
Option "NaturalScrolling" "true"
Option "Tapping" "true"
```

```
git config --global credential.helper 'store --file ~/.config/git/.credentials'
```
