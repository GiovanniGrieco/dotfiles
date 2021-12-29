# The following lines were added by compinstall

zstyle ':completion:*' completer _list _oldlist _expand _complete _ignored _match _correct _approximate _prefix
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'l:|=* r:|=*'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' original true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/ggrieco/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
setopt autocd beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install

# Enable backward history search
bindkey '^R' history-incremental-pattern-search-backward

# Solarized Dark colour scheme
BOLD="%{$(tput bold)%}"
RESET="%{$(tput sgr0)%}"
SOLAR_YELLOW="%{$(tput setaf 136)%}"
SOLAR_ORANGE="%{$(tput setaf 166)%}"
SOLAR_RED="%{$(tput setaf 124)%}"
SOLAR_MAGENTA="%{$(tput setaf 125)%}"
SOLAR_VIOLET="%{$(tput setaf 61)%}"
SOLAR_BLUE="%{$(tput setaf 33)%}"
SOLAR_CYAN="%{$(tput setaf 37)%}"
SOLAR_GREEN="%{$(tput setaf 64)%}"
SOLAR_WHITE="%{$(tput setaf 254)%}"

# Use favourite editor and pager
EDITOR=nvim
VISUAL=nvim
PAGER=less

# Custom left prompt
PS1="${SOLAR_YELLOW}%~${RESET}"$'\u276F '

# Favourite aliases
. ~/.bash_aliases

####
# RPROMPT
####
function check_failed_program() {
    # Report if previous program failed through the red X emoji
    if [ "$?" -ne "0" ]; then
	echo $'\u274c'
    fi
}

function check_git_status() {
    # Report brief git status
    local GIT_BRANCH=$(git status -sb 2>/dev/null | grep -Po "(?<=^## ).*(?=\.\.\.)")

    if [ ! -z "$GIT_BRANCH" ]; then
        local GIT_DIFF=$(git diff-files --shortstat | awk '{ print "'${SOLAR_GREEN}'+"$4"'${SOLAR_RED}'-"$6 }')

        echo $'\u2446'$GIT_BRANCH$GIT_DIFF$RESET
    fi
}

setopt prompt_subst
RPROMPT='$(check_failed_program) $(check_git_status)'

