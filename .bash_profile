##########################################
###      Enviroment Configuration      ###
##########################################
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "


##########################################
###      Better Terminal Commands      ###
##########################################
alias ..='cd ..'          # Go back one dir
alias ...='cd ../../'     # Go back two dirs
alias ls='ls -FGa'        # More info in dir listing
alias ll='ls -FGlAhp'     # More info in dir listing
. ~/dotfiles_mac/z.sh     # Jump to most used folders


##########################################
###           Git Shortcuts            ###
##########################################
alias gs='git status'
alias gd='git diff'
alias gpu='git push'
alias gp='git pull'
alias gc='git checkout'
