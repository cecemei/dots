parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

alias reloaddot="source ~/.bash_profile"
alias opendot="sublime ~/.bash_profile"
# alias bb="open https://bitbucket.$(git config remote.origin.url | cut -f2 -d. | tr ':' /)"
# alias gh="open https://github.$(git config remote.origin.url | cut -f2 -d. | tr ':' /)"
# alias cl="tput reset"
# alias npmbin="npm bin"

# function oo() { git clone git@bitbucket.org:ooapi/oo-"$@".git; }
# function sp() { git clone git@bitbucket.org:ooapi/sp-"$@".git; }
# function sl() { git clone git@bitbucket.org:ooapi/sl-"$@".git; }
# function clone() { git clone git@bitbucket.org:ooapi/"$@".git; }


export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\] (\$(parse_git_branch)) \$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
# [ -s "/Users/yingqian/.scm_breeze/scm_breeze.sh" ] && source "/Users/yingqian/.scm_breeze/scm_breeze.sh"

source ~/.profile

# . ~/.nvm/nvm.sh

source "${HOME}/.iterm2_shell_integration.bash"

# alias repo="cd ~/Documents"
# alias repl='cd ~/Documents/REPL-javascript'
# alias bump='git checkout master; git pull; npm version patch; git push -u origin master --tags; npm publish'

# alias sublime="open -a /Applications/Sublime\ Text.app"
# alias chrome="open -a 'Google Chrome'"
# alias cheatsheetread='open -a "Google Chrome" ~/Documents/REPL-javascript/cheatsheets/README.md'
# alias cheatsheetwrite='macdown ~/Documents/REPL-javascript/cheatsheets/README.md'

# # SP specific
# alias pdbr='ssh vneck-21.ooapi.com -L 27019:localhost:27017'
# alias pdbw='ssh vneck-20.ooapi.com -L 27021:localhost:27017'
# alias sdb='ssh belt.ooapi.com -L 27020:localhost:27017'          #staging database
# alias devdb='ssh belt.ooapi.com -L 27017:localhost:27017'
# alias sldb='ssh blazer-31.ooapi.com -L 27018:localhost:27017'
# alias tshirtdb='ssh tshirt.ooapi.com -L 27022:localhost:27017'
# alias tshirt='ssh tshirt.ooapi.com'
# alias shoes='ssh shoes-0.ooapi.com'
# alias shoes1='ssh shoes-1.ooapi.com'
# alias boots='ssh boots-0.ooapi.com'
# alias boots1='ssh boots-1.ooapi.com'
# alias gloves='ssh gloves.ooapi.com'
# alias hoodie='ssh hoodie-0.ooapi.com'
# alias fruithd='ssh fruithd.ooapi.com'
# alias fruithd-2='ssh fruithd-2.ooapi.com'
# alias fruit4k='ssh fruit4k.ooapi.com'
# alias jorts='ssh jorts.ooapi.com'
# alias bidata='ssh bidata-1.ooapi.com -L 5433:localhost:5432'     #postgresql server
# alias tuxedo='ssh tuxedo-0.ooapi.com'
# alias fruit4k-old='ssh fruit4k-old.ooapi.com'                    #cron jobs
# alias veggie='ssh veggie.ooapi.com'
# alias tanktop='ssh tanktop-0.ooapi.com'                          #staging web server
#———————————————————————————————————
#store ssh password in terminal
#———————————————————————————————————
# ssh-add -K ~/.ssh/id_rsa
# git config --global core.editor $(which vim)

# # export PATH="/usr/local/opt/mongodb@3.4/bin:$PATH"
# export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
# # added by Miniconda2 installer
# export PATH="/Users/yingqian/miniconda2/bin:$PATH"
# export PATH="/Users/yingqian/.local/bin:$PATH"
# export PATH="/Users/yingqian/Documents/nightly-ci-osx64/libembroidery-convert:$PATH"
# # export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
