# Show warning for on TODO and  FIXME ...


To do this, navigate to your project's build phases in Xcode, click on the + sign towards the top left of the window, and then click on "New Run Script Build Phase" in the drop down menu.

The body of the script should be:

```bash
KEYWORDS="TODO|FIXME"

find "${SRCROOT}" \( -name "*.h" -or -name "*.m" \) -print0 | \
    xargs -0 egrep --with-filename --line-number --only-matching "($KEYWORDS).*\$" | \
    perl -p -e "s/($KEYWORDS)/ warning: \$1/"
```
In addition to TODO: FIXME: Xcode also recognises:  
`MARK:` - marking  
`!!!:` - noting  
`???:` - WTF??
