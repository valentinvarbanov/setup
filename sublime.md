# Sublime Text

* Install `Package Control`(cmd+shift+P)
* Install `A File Icon`

## Linter

The following IDE like featues can be enabled by installing:

* Install `SublimeLinter`

### JSON

* Install `SublimeLinter-json` for detecting errors in JSON files

# Sublime Merge

1. Set up git alias(`~/.gitconfig`)

    ```
    [alias]
    	openterm = "!f() { open -a /System/Applications/Utilities/Terminal.app/ $(git rev-parse --show-toplevel) ; } ; f"
    ```

1. Copy `sublime/Default.sublime-commands` into the Sublime Merge User packages directory

	```bash
	cp sublime/Default.sublime-commands /Users/valentin/Library/Application Support/Sublime Merge/Packages/User
	```
