# MySQL

## Starting & Stopping the server (macOS)

```
mysql.server start
mysql.server stop
```

## Fixing permission for multiple users (macOS)

If `mysql` was installed via `brew` only the that installed mysql can efectively use it. To resolve this the following command can be used by any user to fix the permission issue:

```
sudo chmod -R g+rw /usr/local/var/mysql
```

A permanent fix should involve properly configuring umask for all users to avoid future permission erros.
