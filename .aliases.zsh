# fzf
alias fzf="/; fzf --walker=file,dir,follow,hidden; ~"
# Colord ls
alias ls="ls --color"

# fastfetch instead of neofetch
alias neofetch="fastfetch"

# Append doas automaticaly
# emerge
alias emerge="doas emerge"
# eix-sync
alias eix-sync="doas eix-sync"
# eix-update
alias eix-update="doas eix-update"
# unmerge
alias unmerge="doas emerge --depclean --unmerge"
# depclean
alias depclean="doas emerge --depclean"
# update
alias update="doas emerge -uN"
# world
alias world="doas emerge -uN @world"
# rebuild
alias rebuild="doas emerge -uN @preserved-rebuild"

# weather for curl wttr.in/Ranshofen
alias weather="curl wttr.in/Ranshofen"
