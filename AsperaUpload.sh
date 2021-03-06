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
			keystroke "G" using {command down, shift down}
			delay 2
			keystroke "/Users/selenium/Desktop/Logo.jpg"
			delay 1
			keystroke return
			delay 2
			keystroke return
		end tell
	end tell
end tell
EOD
