# ENV Vars Config
set -Ux EDITOR nvim
set -Ux VISUAL nvim
set -Ux PAGER ov
set -Ux MANPAGER ov

# NNN Config
set -Ux NNN_BMS "p:~/Documents/Git/;d:~/Downloads/;h:~/;f:~/.config/fish/"
set -Ux NNN_ARCHIVE "\\.(7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|rar|rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)\$"
set -Ux NNN_FIFO /tmp/nnn.fifo
set -Ux NNN_PLUG "p:preview-tui"
alias nn="nnn -Hi -P p"

## Alias
alias lg="lazygit"

# Use background tasks for some heavy actions (example: delete in background)
# set -x NNN_BG_DEL 1 # Enable background deletion (useful for large directories)

if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source
