# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$ZDOTDIR/ohmyzsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git 
  zsh-syntax-highlighting
  zsh-autosuggestions
  zsh-vi-mode
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# History
##################################################
################# HISTORY ########################
##################################################
HISTSIZE=5000
HISTFILE=~/.config/zsh/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

##################################################
############### KEYBINDINGS ######################
##################################################

bindkey -v
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

my-backward-delete-word() {
    local WORDCHARS=${WORDCHARS//[\/\-_.]/}
    zle backward-delete-word
}
zle -N my-backward-delete-word
bindkey '^W' my-backward-delete-word

##################################################
############### ALIASES ######################
##################################################

alias ls='ls --color'
alias c='clear'

alias dots="/usr/bin/git --git-dir=$DEV_HOME/.dotfiles/ --work-tree=$HOME"
alias sp="source venv/bin/activate"
alias psh="pipenv shell"
alias src="source $ZDOTDIR/.zshrc && source $HOME/.zshenv"
alias wget=wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"

alias tm='tmux attach-session -t home || tmux new -s home -n zsh'
alias sc='tmux attach-session -t scratch || tmux new -s scratch -n zsh'
alias api="cd \$(fzf-worktrees-bare-repo -r /home/carri/dev/wk/fs-bare -a projects/public-server-api)"

alias ideau="idea.sh . > /dev/null 2>&1 &"

alias app="tmuxp load --yes /home/carri/.local/share/tmuxp/apollo.yaml"
alias ap="cd /home/carri/dev/wk/FreightSimple/projects/apollo/"
alias wpp="tmuxp load --yes /home/carri/.local/share/tmuxp/public-web-app.yaml"
alias wp="cd /home/carri/dev/wk/FreightSimple/projects/public-web-app/"
alias fss="tmuxp load --yes /home/carri/.local/share/tmuxp/freightsimple.yaml"
alias fs="cd /home/carri/dev/wk/FreightSimple"
alias sp="cd /home/carri/dev/wk/FreightSimple/projects/public-server-api/"

alias edp="xrandr --output eDP-1 --scale 0.75"

##################################################
############### GIT ALIASES ######################
##################################################
alias gh="git stash -u"
alias gp="git stash pop"
alias gs="git status"

##################################################
############### EXPORTS ######################
##################################################

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export DISABLE_AUTO_TITLE='true'

export FZF_CTRL_R_OPTS='--height 100% --tac -i -e'

##################################################
############### SOURCING/EVAl ######################
##################################################
source ~/freightsimple-local-env

eval "$(zoxide init --cmd cd zsh)"


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Define an init function and append to zvm_after_init_commands
function after_zsh_vi_mode_init() {
  source <(fzf --zsh)
}
zvm_after_init_commands+=(after_zsh_vi_mode_init)
