# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="pygmalion"
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git vi-mode)
plugins=(git tmux tmuxinator)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/home/leasunhy/.gem/ruby/2.2.0/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl:/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

#Preferred editor for local and remote sessions
#if [[ -n $SSH_CONNECTION ]]; then
  #export EDITOR='vim'
#else
  #export EDITOR='mvim'
#fi

export EDITOR='vim'
#export TERM='screen-256color'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


#export IDEA_JDK="/opt/java8/jre"

alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT1| grep -E "state|to\ full|percentage"'
alias cpu='cat /proc/cpuinfo | grep "cpu MHz"'
alias f='xdg-open'
alias v='vim'
alias r720-tunnel="ssh -TND 4711 r720"
alias vact="source bin/activate"

# java options
#   for better font rendering
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
_SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS"
unset _JAVA_OPTIONS
alias java='java "$_SILENT_JAVA_OPTIONS"'

# for 256 colors to work in tmux
alias tmux="TERM=screen-256color tmux"
alias emacs="TERM=screen-256color emacs -nw"
alias gemacs="/usr/bin/emacs"
# tmuxinator completion
source ~/.bin/tmuxinator.zsh
# xclip
alias xcl="xclip -in -selection clipboard"

# zsh syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# virtualenv wrapper
source /usr/bin/virtualenvwrapper.sh

