tell application "System Events"
	tell application process "Chrome"
		repeat until exists button "Open" of window 1
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
