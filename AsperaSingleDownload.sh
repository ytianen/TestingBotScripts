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
end tell
EOD
