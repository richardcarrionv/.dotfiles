typeset -U PATH path

export LC_COLLATE="C"

export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_PICTURES_DIR=${XDG_PICTURES_DIR:="$HOME/picures"}
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}

export XDG_DESKTOP_DIR="$HOME/Desktop"
export XDG_DOCUMENTS_DIR="$HOME/Documents"
export XDG_DOWNLOAD_DIR="$HOME/Downloads"
export XDG_MUSIC_DIR="$HOME/Music"
export XDG_PICTURES_DIR="$HOME/Pictures"
export XDG_PUBLICSHARE_DIR="$HOME/Public"
export XDG_TEMPLATES_DIR="$HOME/Templates"
export XDG_VIDEOS_DIR="$HOME/Videos"

export DEV_HOME="$HOME/dev" 
export DEV_PERSONAL_HOME="$HOME/dev/ps" 
export DEV_WORK_HOME="$HOME/dev/wk" 
export DEV_CHECKOUT_HOME="$HOME/dev/ck" 


export USERXSESSION="$XDG_CACHE_HOME/X11/xsession"
export USERXSESSIONRC="$XDG_CACHE_HOME/X11/xsessionrc"
export ALTUSERXSESSION="$XDG_CACHE_HOME/X11/Xsession"
export ERRFILE="$XDG_CACHE_HOME/X11/xsession-errors"
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc

#export LESSHISTFILE=-
export DIFFPROG="nvim -d"

export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc

export ZDOTDIR=$HOME/.config/zsh
export ZSH_CUSTOM=$HOME/.config/zsh/custom
export HISTFILE="$XDG_DATA_HOME"/zsh/.zsh_history

export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup

export TPM_HOME="$XDG_DATA_HOME"/tpm

export GNUPGHOME="$XDG_DATA_HOME"/gnupg

export SNAP_USER_DATA="$XDG_DATA_HOME"/snap

export DOTNET_CLI_HOME="$XDG_DATA_HOME"/dotnet

export DOCKER_USER_VOLUMES="$XDG_DATA_HOME"/docker/volumes

export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc":"$XDG_CONFIG_HOME/gtk-2.0/gtkrc.mine"

# export GEM_PATH="$XDG_DATA_HOME/ruby/gems"
# export GEM_SPEC_CACHE="$XDG_DATA_HOME/ruby/specs"
# export GEM_HOME="$XDG_DATA_HOME/ruby/gems"

export SHELL="/bin/zsh"
export EDITOR="nvim"
export VISUAL="nvim"
export SUDO_EDITOR="nvim"
export READER="mupdf-gl"
export TERMINAL="alacritty"
export BROWSER="brave-browser"
export COLORTERM="truecolor"
export OPENER="xdg-open"
export LAUNCHER="rofi"
# export PAGER="moar"
# export WM="Hyprland"
# export VIDEO="mpv"
# export IMAGE="sxiv"

path=("$HOME/.local/bin" "/home/carri/.sdkman " "$HOME/bin" "$path[@]")
export PATH

# . "/home/carri/.local/share/cargo/env"
