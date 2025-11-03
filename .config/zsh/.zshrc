# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
export EDITOR=nvim
export MANPAGER="nvim +Man!"
export MANWIDTH=999
PATH+=:$HOME/.config/scripts/
PATH+=:$HOME/.local/bin/
PATH+=:$HOME/.cargo/bin/
PATH+=:$HOME/go/bin/
export PATH
setopt extendedglob nomatch
export TERMINAL="ghostty"
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "~/.config/zsh/.zshrc"
zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}"

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Alias
source ~/.config/zsh/.zshalias
# Starship
eval "$(starship init zsh)"
# Fastfetch
fastfetch -c ~/.config/fastfetch/personal.json
# Fish-like syntax highlight and and autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Zoxide
eval "$(zoxide init zsh)"
# Cheat sh completion
fpath+=:~/.config/zsh/.zsh.d/
