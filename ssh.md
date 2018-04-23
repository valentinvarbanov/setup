# Setup passwordless ssh connection

Add configuration to local file `~/.ssh/config `
```
Host host
    HostName 10.0.0.2
    Port 22
    User user

Host host2
    HostName 10.0.0.3
    Port 23
    User user
```

Generate ssh key - needed only once
```bash
ssh-keygen -t -rsa -b 2048
```

Copy key to remote:
```
ssh-copy-id user@10.0.0.2
ssh-copy-id host2
```
