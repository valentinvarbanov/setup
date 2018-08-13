
# Custom aliases:
```bash
# which show alias
alias which='alias | /usr/local/bin/which --tty-only --read-alias --show-dot --show-tilde'

# linux or mac with gnu utils
alias ls='ls --color=auto'
alias ll='ls -alF'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# mac default only
alias ls='ls -G'
alias ll='ls -l'

# hide/show file from Finder on mac
alias hide-file='chflags hidden'
alias unhide-file='chflags nohidden'

# start a web server on mac
sudo-start-web-server() {
    if [[ $# -ne 1 ]]; then 
        port=8000
    else
        port=$1
    fi    
    sudo python -m SimpleHTTPServer $port
}

start-web-server() {
    if [[ $# -ne 1 ]]; then 
        port=8000
    else
        port=$1
    fi    
    python -m SimpleHTTPServer $port
}
```
