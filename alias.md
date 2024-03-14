
# Custom aliases:
```bash
# which show alias
alias which='alias | which --tty-only --read-alias --show-dot --show-tilde'

# linux or mac with gnu utils
alias ls='ls --color=auto'
alias ll='ls -alF'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# aliases to always output color, even when piping 
alias grep-color='grep --color=always'
alias fgrep-color='fgrep --color=always'
alias egrep-color='egrep --color=always'

# mac default only
alias ls='ls -G'
alias ll='ls -l'

# hide/show file from Finder on mac
alias hide-file='chflags hidden'
alias unhide-file='chflags nohidden'

# fast objc/objc++ compile
alias clang-objc='clang -fobjc-arc -fmodules'
alias clang-objc++='clang++ -fobjc-arc -fmodules'

# reset/restore default mac command-line utils
export PATH_BACKUP="$PATH"
alias reset-path='PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin"'
alias restore-path='PATH="$PATH_BACKUP"'

# stop java executables from stealing focus
export _JAVA_OPTIONS_BAKUP="$_JAVA_OPTIONS_BAKUP"
alias fix-java-focus='export _JAVA_OPTIONS="-Djava.awt.headless=true"'
alias unfix-java-focus='export _JAVA_OPTIONS="$_JAVA_OPTIONS_BAKUP"'

# show/hide files and folders on mac
# usage: hide FILE / unhide FILE
alias hide='chflags hidden'
alias unhide='chflags nohidden'

# usb
alias fix-usb='sudo killall -STOP -c usbd'
alias unfix-usb='sudo killall -CONT -c usbd'

# audio (mic, headphones, speaker not working)
alias fix-audio='sudo pkill coreaudiod'

# start a web server on mac
sudo-start-web-server() {
    if [[ $# -ne 1 ]]; then 
        port=8000
    else
        port=$1
    fi    
    echo "Starting web server in $(pwd) at port $port"
    sudo python3 -m http.server $port
}

start-web-server() {
    if [[ $# -ne 1 ]]; then 
        port=8000
    else
        port=$1
    fi    
    echo "Starting web server in $(pwd) at port $port"
    python3 -m http.server $port
}

 # start a plantuml web server (with Docker)
 alias start-plantuml='docker run -d -p 8080:8080 plantuml/plantuml-server:tomcat'
```
