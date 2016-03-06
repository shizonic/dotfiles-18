###################################################
# 
#  Author: Mohammed Bakari
#  Github: https://github.com/mohabaks
#
###################################################

# If not running interactively, don't do anything
[ -z "$PS1" ] && return
export PROJECT_HOME=$HOME/Code/Projects/
export PATH=$HOME/scripts:$PATH
export TZ=Africa/Nairobi

source virtualenvwrapper.sh
source ~/.git-prompt.sh


#---------------------------------------------------------------------------
#
#                      PROMPT
#----------------------------------------------------------------------------

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


#PS1='[\u@\h \W]\$ '
#PS1='\[\e[1m\]┌─[\u@\h][\W]\n\[\e[1m\]└─[\$]\[\e[0m\] '
#PS1='┌─[\u@\h][\W]\n└─[\$] '
#PS1='┌─[\e[1;34m\u\e[0m\e[1;31m@\e[0m\e[1;35m\h\e[0m][\e[1;32m\W\e[0m]\n└─$(__git_ps1 "[\e[0;32m%s\e[0m]")> '
PS1='┌─[\e[1;33m\W\e[0m]\n└─$(__git_ps1 "[\e[1;32m%s\e[0m]")> \e[1;35m'

# Prompt variables
# PROMPT_BEFORE=$PS1 
# PROMPT_AFTER=""

# Prompt command
#PROMPT_COMMAND='__git_ps1 "$PROMPT_BEFORE" "$PROMPT_AFTER"'

# Git prompt features (read ~/.git-prompt.sh for reference)
# export GIT_PS1_SHOWDIRTYSTATE="true"
# export GIT_PS1_SHOWSTASHSTATE="true"
# export GIT_PS1_SHOWUNTRACKEDFILES="true"
# export GIT_PS1_SHOWUPSTREAM="auto"
# export GIT_PS1_SHOWCOLORHINTS="true"


#----------------------------------------------------------------------------
#                                           
#                       ALIASES
#-----------------------------------------------------------------------------

alias ls='ls -hFX --color=auto --group-directories-first'
alias islam='cd ~/Videos/Islam'
alias i3config='vim ~/.i3/config'
alias vimrc='vim ~/.vimrc'
alias bashrc='vim .bashrc'
alias xdefaults='vim ~/.Xdefaults'
alias reload='source ~/.bashrc'
alias htop='htop -u mohabaks'


#----------------------------------------------------------------------------
#  
#                       COLORS FOR MAN PAGES 
#----------------------------------------------------------------------------

export LESS_TERMCAP_mb=$'\e[1;34m'
export LESS_TERMCAP_md=$'\e[1;33m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[1;40;34m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;32m'
