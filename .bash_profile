##########################################
###      Enviroment Configuration      ###
##########################################
export PS1='\u@\T \W \\$\[$(tput sgr0)\] '


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