# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# zplugin load
source ~/.zplug/init.zsh

# zplugin list
zplug "b4b4r07/enhancd", use:init.sh

# zplugin install & load
zplug check || zplug install
zplug load

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME=powerlevel10k/powerlevel10k
DEFAULT_USER=meghendra

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Alias settings
alias server1='ssh aprnd@10.253.107.130 -X'
alias server2='ssh aprnd@10.253.105.210 -X'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

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
plugins=(git autojump tmux fast-syntax-highlighting history history-substring-search command-not-found zsh-autosuggestions k)

source $ZSH/oh-my-zsh.sh

# Lots of history
export HISTFILE=~/.history
export HISTSIZE=1000000
export SAVEHIST=$HISTSIZE

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
export https_proxy=https://168.219.61.252:8080

# Perforce Settings
export P4PORT=165.213.202.43:1713
export P4BRANCH=//ICS_TASK/ETC/D2_VZW_SPR_IOT
export P4CLIENT=JI6_ICS_MAIN_COMBINATION_BUILD
export P4USER=ji6.lee

export ANDROID_NDK=/usr/local/android-ndk-r17b
export PYTHON=/usr/bin/python
# for android
export JAVA_HOME=/usr/lib/jvm/jdk1.7.0_79
export ANDROID_JAVA_HOME=$JAVA_HOME
export LD_LIBRARY_PATH=/usr/local/lib/:/usr/local/libiconv/lib:$LD_LIBRARY_PATH
export ARCH=arm
export PATH=$JAVA_HOME/bin:/home/meghendra/.cargo/bin:/home/meghendra/Work/bin:$ANDROID_NDK:$PATH:


[ -s "/home/meghendra/.scm_breeze/scm_breeze.sh" ] && source "/home/meghendra/.scm_breeze/scm_breeze.sh"

# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/meghendra/tools/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/home/meghendra/tools/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/meghendra/tools/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/home/meghendra/tools/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

if [[ "$COLORTERM" == "gnome-terminal" ]]; then
        export TERM="xterm-256color"
fi


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
export FZF_DEFAULT_COMMAND='fd --type file'
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

eval "$(fasd --init auto)"
alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection
alias v='f -e vim'       # quick opening files with vim

# enhancd
export ENHANCD_DISABLE_HOME=1

# the fuck
eval $(thefuck --alias)
