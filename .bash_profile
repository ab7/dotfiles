### Enviroment Configuration ###
export PS1='😈 \W: '


### Better Terminal Commands ### 
alias ..='cd ..'          # Go back one dir
alias ...='cd ../../'     # Go back two dirs
alias ls='ls -FGa'        # More info in dir listing
. ~/z-master/z.sh         # Jump to most used folders


### Google App Engine Commands ###
gae() {
    if [ $1 = 'update' ]; then
        appcfg.py --oauth2 update $2
    else    
        dev_appserver.py $1
    fi
}

alias gae=gae
