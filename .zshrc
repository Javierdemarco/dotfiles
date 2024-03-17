# Starship Prompt
eval "$(starship init zsh)"
# Enable colors and change prompt
autoload -U colors && colors
# Lines configured by zsh-newuser-install
SAVEHIST=1000
HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=1000
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
# Emacs mode
bindkey -e
bindkey '^R' history-incremental-search-backward
export KEYTIMEOUT=1
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'
autoload -Uz compinit
zstyle ':completion*' menu select
# Case insensitive completion
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
zmodload zsh/complist
compinit
_comp_options+=(globdots) # Include hidden files
# End of lines added by compinstall

# Source config files
# set PATH so it includes user's private ~/.local/bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$PATH:$HOME/.local/bin"
fi
# Add to path custom bin
if [ -d "$HOME/.scripts/" ] ; then
    PATH="$PATH:$HOME/.scripts/"
fi
for f in ~/.config/zsh/*.zsh; do source "$f"; done
# Variables
export EDITOR=emacs
export VISUAL=emacs
# Emacs preformance
export LSP_USE_PLISTS=true

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
