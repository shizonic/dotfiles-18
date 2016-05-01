#***********************************************************************
#
#                  Github: https://github.com/mohabaks
#
#***********************************************************************

export PROJECT_HOME=$HOME/Code/Projects/
export PATH=$HOME/bin:$PATH
export EDITOR=vim
export BROWSER=luakit
export TZ=Africa/Nairobi

source virtualenvwrapper.sh
source ~/.git-prompt.sh


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

#PS1='┌─(\e[0;33m\W\e[0m)$(__git_ps1 "[\e[0;31m%s\e[0m]")\n└─ '
PS1='\[\e[1;33m\]>>\e[0m \[\e[1;30m\][\[\e[0m\]\W\[\e[1;30m\]]\[\e[1;34m\]\[\e[0m\]\[\e[m \]$(__git_ps1 "\n \e[0;35m╺─╸\e[0m\[\e[1;30m\][\[\e[0m\]\e[0;31m%s\e[0m\e[1;30m\]]\[\e[1;34m\]") '


#-----------------------------------------------------------------------
#                                           
#                           ALIASES
#-----------------------------------------------------------------------

alias ls='ls -hFX --color=auto --group-directories-first'
alias islam='cd ~/Videos/Islam'
alias dotfiles='cd ~/dotfiles/'
alias i3config='vim ~/.i3/config'
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'
alias cava=' cava -c magenta -i  fifo -p /tmp/mpd.fifo'
alias xdefaults='vim ~/.Xdefaults'
alias reload='source ~/.bashrc'
alias htop='htop -u mohabaks'
alias clock='tty-clock -csbBD -C 3'


#-----------------------------------------------------------------------
#  
#                      COLORS FOR MAN PAGES 
#-----------------------------------------------------------------------

export LESS_TERMCAP_mb=$'\e[0;31m'
export LESS_TERMCAP_md=$'\e[0;33m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[0;34;31m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[0;35m'
