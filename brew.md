# Brew setup on new macOS machine

Install brew
```bash
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
```

Update bash
```bash
# install
brew install bash

# add to supported shells
echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;

# change for current user
chsh -s /usr/local/bin/bash;
```

Install up to date GNU versions of default commands(outdated)
```bash
brew install coreutils
brew install gnu-sed 
brew install gnu-tar 
brew install gnu-which 
brew install grep   

brew install bash-completion@2

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils
```

Add the GNU alternative tools in the path:
```bash
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
PATH="/usr/local/opt/gnu-which/libexec/gnubin:$PATH"
PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
```

Outdated - Install up to date GNU versions of default commands
```bash
brew install coreutils
brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names
brew install gnu-which --with-default-names
brew install grep --with-default-names    

brew install bash-completion@2

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils --with-default-names


```

Append to `.bashrc` or `.bash_profile`
```bash
# for GNU coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# for bash completion
if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
    . $(brew --prefix)/share/bash-completion/bash_completion
fi

```

Must have utilities
```bash
brew install telnet
brew install tree
brew install clang-format
brew install htop
brew install cmake
brew install mycli
brew install mysql
```

Those installs may take longer to complete
```bash
brew install python
brew install python3
brew install boost
```

Not needed at the moment, but good for future compatibility
```bash
brew install gnu-getopt --with-default-names
brew install gnu-time --with-default-names
```
