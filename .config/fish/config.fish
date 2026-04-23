# ENVIRONMENT
set -x EDITOR nvim
set -x VISUAL nvim
set -x SUDO_EDITOR nvim
set -gx PATH ~/Scripts $PATH
# Source Alias file
source ~/.config/fish/alias.fish
# Configuration
starship init fish | source
# Functions
source ~/.config/fish/functions/yazi.fish
