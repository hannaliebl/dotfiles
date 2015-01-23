export PATH=/usr/local/bin:$PATH
export EDITOR='subl -w'

# Shortcuts
alias simpleserve='python -m SimpleHTTPServer'
alias l='ls -1'
alias ll='ls -lah'
alias gitco="git checkout"
alias gitst="git status"
alias which='type -a'

# History
bind '"\e[A"':history-search-backward
bind '"\e[B"':history-search-forward
bind '"\M-\e[B"':"\"\C-k\C-ahistory | grep '^ *[0-9]* *\C-e.'\C-m\""
shopt -s histappend

# CD shortcuts
shopt -s cdable_vars

# Git autocompletion
if [ -f $(brew --prefix)/etc/bash_completion.d/git-completion.bash ]; then
  source $(brew --prefix)/etc/bash_completion.d/git-completion.bash
else
  source ~/.git-completion.bash
fi

if [ -f $(brew --prefix)/etc/bash_completion.d/git-prompt.sh ]; then
  source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
else
  source ~/.git-prompt.sh
fi

# Command prompt configuration
export PROMPT_COMMAND='__git_ps1 "\u: \w" "\\\$ "'
export CLICOLOR=1
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM=auto
