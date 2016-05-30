#***********************************************************************
#
#                  Github: https://github.com/mohabaks
#
#***********************************************************************

export PROJECT_HOME=$HOME/Code/Projects/
export PATH=$HOME/scripts:$PATH
export EDITOR=vim
export BROWSER=luakit
export TERM="rxvt-unicode-256color"
export TZ=Africa/Nairobi

#source $HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh
source virtualenvwrapper.sh
#source ~/.shell_prompt.sh
source ~/.git-prompt.sh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


#-----------------------------------------------------------------------
#
#                           PROMPT
#-----------------------------------------------------------------------

# Syntactic sugar for ANSI escape sequences
txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
badgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

PS1='\[\e[0;35m\]>>> \[\e[0m\e[0;36m\] \W\[\e[0m\] $(__git_ps1 "\[\e[0;31m\]@\[\e[0m\]\[\e[0;33m\]\[\e[5m \]%s\[\e[25m\]\[\e[0m\]") \[\e[0;35m▲\e[0m\] '
#PS1='\[\e[0;35m┌─▲\e[0m\e[0;36m \W\e[0m \e[0;31m▲\e[0m $(__git_ps1 "\e[0;34m\e[5m%s\e[25m\e[0m \e[0;36m☗\e[0m")\]\n\[\e[0;33m\]└─♦\[\e[0m\] '
#PS1='\[\e[1;31m\]▲\e[0m\[\e[1;30m\] \[\e[0m\]\e[0;32m\W\[\e[1;33m\] ☗\[\e[1;34m\]\[\e[0m\]\[\e[m \]$(__git_ps1 "\e[0;33m\e[0m\[\e[1;30m\]\[\e[0m\]\e[0;34m\e[5m%s\e[25m\e[0m\e[1;35m\] ♦\[\e[1;37m\]") '
#PS1="\[\e[01;31m\]┌─[\t]──[\[\e[01;31m\u\e[01;31m\]]──[\[\e[00;31m\]${HOSTNAME%%.*}\[\e[01;31m\]]:\w$\[\e[01;31m\]\n\[\e[01;37m\]└──\[\e[01;37m\](\[\e[32;1m\]\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files, \$(/usr/bin/ls -lah | /usr/bin/grep -m 1 total | /usr/bin/sed 's/total //')b\[\e[01;37m\])>>\[\e[0m\]"


#-----------------------------------------------------------------------
#                                           
#                           ALIASES
#-----------------------------------------------------------------------

alias dotfiles='cd ~/dotfiles/'
alias i3config='vim ~/.i3/config'
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'
alias xdefaults='vim ~/.Xdefaults'
alias reload='source ~/.bashrc'
alias xrdb='xrdb -merge ~/.Xdefaults && xrdb -load ~/.Xdefaults'
alias htop='htop -u mohabaks'
alias clock='tty-clock -csbBD -C 3'
alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -hFX'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias grep='grep --color=tty -d skip'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias rm='rm -i'
# Wifi on/off
alias wifi_on="nmcli nm wifi on"
alias wifi_off="nmcli nm wifi off"


#-----------------------------------------------------------------------
#  
#                      COLORS FOR MAN PAGES 
#-----------------------------------------------------------------------

export LESS_TERMCAP_mb=$'\e[0;34m'
export LESS_TERMCAP_md=$'\e[0;31m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[0;34;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[0;35m'
