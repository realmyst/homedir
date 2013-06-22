source ~/.zshkit/rc
umask 2

[[ -e '/usr/local/rvm' ]] && source '/usr/local/rvm/scripts/rvm'
[[ -e "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

alias ssh-cp1251='luit -encoding CP1251 ssh'

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
else
    export TERM='xterm-color'
fi

if [ -e ~/.zshrc.local ]; then
    source ~/.zshrc.local
fi

