##########################################
###      Enviroment Configuration      ###
##########################################
export PS1='😈 \W: '
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin # For homebrew


##########################################
###      Better Terminal Commands      ###
##########################################
alias ..='cd ..'          # Go back one dir
alias ...='cd ../../'     # Go back two dirs
alias ls='ls -FGa'        # More info in dir listing
. ~/z-master/z.sh         # Jump to most used folders


##########################################
###          Backup Commands           ###
##########################################
bkup() {
    rsync -avE --delete ~/Documents/ "/Users/cloud/Dropbox/backup"
    rsync -avE --delete ~/Documents/ "/Users/cloud/GoogleDrive/backup"
}
alias bkup=bkup


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
###     File and folder functions      ###
##########################################
web() {
    cp -r /Users/cloud/Documents/hack/git/grunt-web-boiler /Users/cloud/Documents/hack/webdev/sites
    mv /Users/cloud/Documents/hack/webdev/sites/grunt-web-boiler /Users/cloud/Documents/hack/webdev/sites/$1
}
alias web=web
