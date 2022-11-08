MyValue1=$1
osascript <<EOD
tell application "System Events"
	repeat until exists UI element 3 of group 1 of group 1 of group 1 of group 1 of sheet 1 of window 1 of application process "Chrome"
		delay 1
	end repeat
	click UI element 3 of group 1 of group 1 of group 1 of group 1 of sheet 1 of window 1 of application process "Chrome"
end tell

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
