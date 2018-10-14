# Automator

Change screen resolution of built-in display

```applescript
on run {input, parameters}
	tell application "System Preferences"
		reveal anchor "displaysDisplayTab" of pane "com.apple.preference.displays"
	end tell


	tell application "System Events" to tell process "System Preferences" to tell window "Built-in Retina Display"
		click radio button "Display" of tab group 1
		click radio button "Scaled" of radio group 1 of tab group 1
		tell radio group 1 of group 1 of tab group 1
			set isRetinaOptimized to get value of radio button 3
		end tell
		if isRetinaOptimized then
			click radio button 4 of radio group 1 of group 1 of tab group 1
		else
			click radio button 3 of radio group 1 of group 1 of tab group 1
		end if
	end tell
	quit application "System Preferences"
	return input
end run
```


Toggle Dark Mode on/off
```applescript
tell application "System Events"
	tell appearance preferences
		set dark mode to not dark mode
	end tell
end tell
```


Note: By default Automator workflows are saved in `~/Library/Services/`
