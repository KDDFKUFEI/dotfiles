# Use fzf
eval "$(fzf --zsh)"

# Aliases
source ~/.aliases.zsh

# Report time of execution if it is heigher then 1 second
REPORTTIME=1

# Prompt(right side): "(bold)(green)username(white)@hostname (not bold)(blue)path relative to /home (bold)$ "
PS1="%B%F{green}%n%f@%M%b %F{blue}%~ %(?..%B%F{red}[%?] )%F{blue}%B$%b%f "

# Prompt(right side): "(black)time of the day  date"
RPS1="%F{8}%D{%H:%M:%S  %d.%m.%Y}"

# Save history on exit
autoload -Uz add-zsh-hook
add-zsh-hook zshexit save_history

save_history() {
  fc -AI
}

# Ignor errors in history
zshaddhistory() {
  # Return 1 to ignore commands with errors.
  if ! command -v ${1%% *} >/dev/null 2>&1; then
    return 1
  fi
  return 0
}

# Append history instead of overwriting
setopt appendhistory

# Share history across all sessions
setopt sharehistory

# Bypass globing when it dosent find any matches
setopt no_nomatch

# fzf tab
source /usr/share/zsh/site-functions/fzf-tab.zsh

# Autosuggestion
source /usr/share/zsh/site-functions/zsh-autosuggestions.zsh

# Syntax highlighting
source /usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh

# No correctoins
unsetopt correct correctall

# Completions cache
zstyle ':completion:*' cache-path ~/.zsh-cache

# No dups in history
setopt hist_ignore_all_dups

# No commands in history that are preceded py a " "
setopt hist_ignore_space 

# cd when there is no cd infront of a file path
setopt autocd 

# Extended globing functionality
setopt extendedglob

# Completions formating
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

# completions colours
zstyle ':completions:*' list-colors "${(s.:.)LS_COLORS}"

# fzf-tab preview of directories
zstyle ':fzf-tab:complete:cd:' fzf-preview 'ls --color $realpath'

# The following lines were added by compinstall
zstyle ':completion:*' auto-description '%d'
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' file-sort name
zstyle ':completion:*' format '%d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' ignore-parents parent pwd
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors "${(s.:.)LS_COLOURS}"
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '+' '+m:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+r:|[._-]=** r:|=**' '+l:|=* r:|=*'
zstyle ':completion:*' menu no
zstyle ':completion:*' original true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' use-compctl true
zstyle ':completion:*' verbose true
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Lines configured by zsh-newuser-install
HISTFILE=~/dotfiles/.zshhistfile
HISTSIZE=10000
SAVEHIST=$HISTSIZE
setopt autocd beep extendedglob notify
# End of lines configured by zsh-newuser-install
