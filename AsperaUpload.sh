#!/bin/bash
# sudo hdiutil attach  http://download.asperasoft.com/download/sw/connect/3.6.6/AsperaConnectInstaller-3.6.6.119698.dmg
# sudo installer -package /Volumes/Aspera\ Connect\ Installer/AsperaConnectInstaller.pkg -target /
# sudo hdiutil detach /Volumes/Aspera\ Connect\ Installer/
osascript <<EOD
tell application "Aspera Connect"
	activate
	tell application "System Events"
		tell process "Aspera Connect"
			repeat until exists button "Yes" of window 1
				delay 1
			end repeat
			delay 1
			click checkbox of window 1
			delay 1
			click button "Yes" of window 1
		end tell
	end tell
	tell application "System Events"
		tell process "Aspera Connect"
			repeat until exists button "Cancel" of window 1
				delay 1
			end repeat
			delay 2
			click menu item "Untitled" of menu 1 of pop up button "Where:" of window 1
			delay 5
     			click group 4 of list 1 of scroll area 2 of scroll area 1 of browser 1 of splitter group 1 of splitter group 1 of window 1
			delay 2
     			click group 1 of list 1 of scroll area 3 of scroll area 1 of browser 1 of splitter group 1 of splitter group 1 of window 1
			delay 2
     			click group 3 of list 1 of scroll area 4 of scroll area 1 of browser 1 of splitter group 1 of splitter group 1 of window 1
			delay 2
     			click group 1 of list 1 of scroll area 5 of scroll area 1 of browser 1 of splitter group 1 of splitter group 1 of window 1
			delay 2
			click button "Open" of window 1
		end tell
	end tell
end tell
EOD
