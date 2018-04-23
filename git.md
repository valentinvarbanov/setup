# Git

Create global gitignore file:
```bash
echo '*~' >> ~/.gitignore_global
echo '.DS_store' >> ~/.gitignore_global
```

Append to global git config (usually `~/.gitconfig`):
```
[user]
    name = John John
    email = john@gmail.com

[color]
    branch = auto
    status = auto
    ui = auto

[diff]
    tool = vimdiff

[alias]
    lg = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --

    lgg = log --graph --all --decorate --oneline

    lggg = log --graph --all --decorate --abbrev-commit --date-order
```
