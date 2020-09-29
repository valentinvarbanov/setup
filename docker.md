# Installing docker on macOS

Download and install [Docker Desktop](https://www.docker.com/products/docker-desktop) app.

# Autocomplete

Run the following command:

```bash
etc=/Applications/Docker.app/Contents/Resources/etc
ln -s $etc/docker.bash-completion $(brew --prefix)/etc/bash_completion.d/docker
ln -s $etc/docker-compose.bash-completion $(brew --prefix)/etc/bash_completion.d/docker-compose
```

This assumes that `bash` and `bash-completion` packages were installed via brew.

Latest guide: [Docker official documentation](https://docs.docker.com/docker-for-mac/#install-shell-completion)
