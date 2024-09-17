# macOS 

Fix menu bar icons hiding behind notch: [https://www.jessesquires.com/blog/2023/12/16/macbook-notch-and-menu-bar-fixes/](https://www.jessesquires.com/blog/2023/12/16/macbook-notch-and-menu-bar-fixes/)

```bash
defaults -currentHost write -globalDomain NSStatusItemSpacing -int 12
defaults -currentHost write -globalDomain NSStatusItemSelectionPadding -int 8
killall SystemUIServer
```
