#!/usr/bin/osascript
on run argv
	tell application "iTerm"
		activate
		tell current window to set tb to create tab with profile (item 1 of argv)
		delay 3
		tell current session of current window to write text (item 2 of argv)
	end tell
end run