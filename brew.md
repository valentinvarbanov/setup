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

# add to supported shells (check with which bash)
echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
# or
echo '/opt/homebrew/bin/bash' | sudo tee -a /etc/shells;

# change for current user
chsh -s /usr/local/bin/bash
# or
chsh -s /opt/homebrew/bin/bash
```

Install up to date GNU versions of default commands(outdated)
```bash
brew install coreutils
brew install gnu-sed 
brew install gnu-tar 
brew install gnu-which 
brew install grep   
brew install man-db

brew install bash-completion@2

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils
```

Append to `.bashrc` or `.bash_profile`
```bash
# for GNU coreutils
PATH="$(brew --prefix)/opt/coreutils/libexec/gnubin:$PATH"
PATH="$(brew --prefix)/opt/gnu-sed/libexec/gnubin:$PATH"
PATH="$(brew --prefix)/opt/gnu-tar/libexec/gnubin:$PATH"
PATH="$(brew --prefix)/opt/gnu-which/libexec/gnubin:$PATH"
PATH="$(brew --prefix)/opt/grep/libexec/gnubin:$PATH"
PATH="$(brew --prefix)/opt/findutils/libexec/gnubin:$PATH"
PATH="$(brew --prefix)/opt/man-db/libexec/bin:$PATH"
# for bash completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
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
brew install python3
brew install node
brew install boost
```

Not needed at the moment, but good for future compatibility
```bash
brew install gnu-getopt
brew install gnu-time
```

PATH additions:
```bash
PATH="$(brew --prefix)/opt/gnu-time/libexec/gnubin:$PATH"
PATH="$(brew --prefix)/opt/gnu-getopt/bin:$PATH"
```
