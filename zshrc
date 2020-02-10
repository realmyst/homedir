source ~/.zshkit/rc
umask 2

[[ -e '/usr/local/rvm' ]] && source '/usr/local/rvm/scripts/rvm'
[[ -e "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

alias ssh-cp1251='luit -encoding CP1251 ssh'
alias vss='cd ~/workstation && vagrant ssh'

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
else
    export TERM='xterm-color'
fi

if [ -e ~/.zshrc.local ]; then
    source ~/.zshrc.local
fi

source ~/.zshenv

#export NVM_DIR="~/.nvm"
#source "$(brew --prefix nvm)/nvm.sh"

export PATH="$HOME/.yarn/bin:$PATH"
. $HOME/.asdf/asdf.sh
test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"
source $HOME/.cargo/env
export ERL_AFLAGS="-kernel shell_history enabled"
export PATH="/usr/local/sbin:$PATH"
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
