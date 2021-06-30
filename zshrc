# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

######################################################################
# It is better to only enalbe when you use zplugin for performance.
# # zplugin load
source ~/.zplug/init.zsh

# # zplugin list
# zplug "b4b4r07/enhancd", use:init.sh
zplug 'wfxr/forgit'
zplug 'chrissicool/zsh-256color'

# # zplugin install & load
zplug check || zplug install
zplug load
######################################################################

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME=powerlevel10k/powerlevel10k
DEFAULT_USER=meghendra

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
#DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(gitfast autojump tmux fast-syntax-highlighting history history-substring-search command-not-found zsh-autosuggestions k sudo zsh-completions)

source $ZSH/oh-my-zsh.sh

# Lots of history
export HISTFILE=~/.history
export HISTSIZE=1000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY


# Other miscellaneous ENV variables
export PAGER='less -FSRX'

# Customize to your needs...
export GIT_SSL_NO_VERIFY=1

if [[ "$COLORTERM" == "gnome-terminal" ]]; then
	export TERM="xterm-256color"
fi

# Env settings
export http_proxy="http://168.219.61.252:8080"
export ftp_proxy="http://168.219.61.252:8080"
export https_proxy="http://168.219.61.252:8080"

export ANDROID_NDK=/usr/local/android-ndk-r20b
export PYTHON=/usr/bin/python
# for android
export JAVA_HOME=/usr/lib/jvm/jdk1.7.0_79
# export JAVA_OPTIONS=-Xmx1024m
export ANDROID_JAVA_HOME=$JAVA_HOME
export LD_LIBRARY_PATH=/usr/local/lib/:/usr/local/libiconv/lib:/usr/aarch64-linux-gnu/lib:$LD_LIBRARY_PATH
export PATH=$JAVA_HOME/bin:/home/meghendra/.cargo/bin:/home/meghendra/Work/bin:$ANDROID_NDK:/home/meghendra/.system/psdk-cli:$PATH:

# for golang
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH


[ -s "/home/meghendra/.scm_breeze/scm_breeze.sh" ] && source "/home/meghendra/.scm_breeze/scm_breeze.sh"

# >>> fzf init >>>
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
function fzf-view()
{
    fzf --preview '[[ $(file --mime {}) =~ binary ]] &&
                 echo {} is a binary file ||
                 (highlight -O ansi -l {} ||
                  coderay {} ||
                  rougify {} ||
                  cat {}) 2> /dev/null | head -500'
}

# for fzf with fd
export FZF_DEFAULT_COMMAND='fd --type file -I'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Options to fzf command
export FZF_COMPLETION_OPTS='+c -x'

# Use fd (https://github.com/sharkdp/fd) instead of the default find
# command for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}

# <<< fzf init <<<

# fasd
# eval "$(fasd --init auto)"
# alias a='fasd -a'        # any
# alias s='fasd -si'       # show / search / select
# alias d='fasd -d'        # directory
# alias f='fasd -f'        # file
# alias sd='fasd -sid'     # interactive directory selection
# alias sf='fasd -sif'     # interactive file selection
# alias z='fasd_cd -d'     # cd, same functionality as j in autojump
# alias zz='fasd_cd -d -i' # cd with interactive selection
# alias v='f -e vim'       # quick opening files with vim

# enhancd
export ENHANCD_DISABLE_HOME=1
export ENHANCD_DISABLE_DOT=1

# weather
alias weather='curl v2.wttr.in/'

export P4PORT=165.213.202.46:1716
export P4USER=ji6.lee
export P4EDITOR=vi

# For ranger
export EDITOR=vi

# exa
alias l='exa -alh'

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# gitstatus
source ~/.gitstatus/gitstatus.prompt.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# zsh-completions
autoload -U compinit && compinit

# Rust
export RUST_SRC_PATH=$(rustc --print sysroot)/lib/rustlib/src/rust/src/

export ZSH_AUTOSUGGEST_MANUAL_REBIND=false

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/meghendra/.anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/meghendra/.anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/meghendra/.anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/meghendra/.anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# { psdk-cli
export PSDK_CLI_HOME=/home/meghendra/Work/psdk-cli  # psdk-cli
[ -f "$PSDK_CLI_HOME/configs/psdk-cli-autocomplete.bash" ] && source "$PSDK_CLI_HOME/configs/psdk-cli-autocomplete.bash"
export PATH=$PATH:$PSDK_CLI_HOME  # psdk-cli path
# psdk-cli }

# starship
# https://starship.rs/guide/#%F0%9F%9A%80-installation
# eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

