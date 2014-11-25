##########################################
###      Enviroment Configuration      ###
##########################################
export PS1='\[$(tput setaf 7)\]\u\[$(tput setaf 4)\]@\h \W\[$(tput setaf 7)\] $ \[$(tput sgr0)\]'
export PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin' # For homebrew

# auto tab completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi


##########################################
###      Better Terminal Commands      ###
##########################################
alias ..='cd ..'          # Go back one dir
alias ...='cd ../../'     # Go back two dirs
alias ls='ls -FGa'        # More info in dir listing
. ~/dotfiles/z.sh         # Jump to most used folders


##########################################
###    Google App Engine Commands      ###
##########################################
gae() {
    if [ $1 = 'update' ]; then
        appcfg.py --oauth2 update $2
    else
        dev_appserver.py $1
    fi
}
alias gae=gae


##########################################
###     Python Related Shortcuts       ###
##########################################
# virtutalenv python 2 and 3
alias v='virtualenv venv'
alias v.act='. venv/bin/activate'

alias v3='virtualenv venv3 -p /usr/local/bin/python3'
alias v3.act='. venv3/bin/activate'

# simple http server
alias server='python -m SimpleHTTPServer 8000'

