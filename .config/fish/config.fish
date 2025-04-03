# nnn Configuration File

# Enable file previews with the 'p' key (requires a preview plugin)
#set -x NNN_PLUG preview-tui # Load the preview plugin

# Keybinding Customizations:
# Here we modify keybindings to match some preferred actions
# You can look up the default key bindings in the `nnn` manual or `nnn` GitHub page

#set -x NNN_BMS "b:~/Documents,b:~/Downloads" # Set bookmarks (using 'b' to jump to directories)
#set -x NNN_OPTS --no-mouse # Disable mouse support (useful for keyboard-only navigation)

# Setup Preview Plugin for File Previews
# set -x NNN_PLUG  # Enables file previews on 'p' key press

# Show hidden files by default
set -Ux NNN_BMS "p:~/Documents/Git/;d:~/Downloads/;h:~/"
set -Ux NNN_ARCHIVE "\\.(7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|rar|rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)\$"
set -Ux NNN_FIFO /tmp/nnn.fifo
set -Ux NNN_PLUG "p:preview-tui"
alias nn="nnn -Hi -P p"

# Use background tasks for some heavy actions (example: delete in background)
# set -x NNN_BG_DEL 1 # Enable background deletion (useful for large directories)

if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source
