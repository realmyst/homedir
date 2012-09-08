source ~/.zshkit/rc
umask 2

[[ -d '/usr/local/rvm' ]] && source '/usr/local/rvm/scripts/rvm'
[[ -d "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

alias ssh-cp1251='luit -encoding CP1251 ssh'

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
else
    export TERM='xterm-color'
fi

if [ -e ~/.zshrc.local ]; then
    source ~/.zshrc.local
fi

