#!/bin/bash

MyValue='/Users/selenium/Downloads/AsperaIBMLogo.jpg'
MyValue2=$2
#osascript <<EOD
/usr/bin/osascript<<EOF
    on run
    tell application "Aspera Connect"
	        activate
	        tell application "System Events"
	            tell process "Aspera Connect"
			        repeat until exists of button 1 of window 1
			        delay 1
			        end repeat
			        delay 2
			        keystroke return
			        click button "Yes"
                end tell
            end tell
        end tell
        tell application "Aspera Connect"
	        activate
	        set myFile to do shell script "echo '$MyValue'"
	        tell application "System Events"
	            tell process "Aspera Connect"
	                repeat until exists window 1
	                delay 1
	                end repeat
			        keystroke "g" using {command down, shift down}
			        delay 2
			        keystroke myFile
			        delay 1
			        keystroke return
			        delay 2
			        keystroke return
			end tell
            end tell
        end tell
        delay 10
        
        tell application "Aspera Connect"
	        activate
	        set myFile to do shell script "echo '$MyValue2’”
	        tell application "System Events"
	            tell process "Aspera Connect"
	                repeat until exists window 1
	                delay 1
	                end repeat
			        keystroke "g" using {command down, shift down}
			        delay 2
			        keystroke myFile
			        delay 1
			        keystroke return
			        delay 2
			        keystroke return
			     end tell
            end tell
        end tell
        delay 10
        tell application "Aspera Connect"
	        activate
	        tell application "System Events"
	            tell process "Aspera Connect"
			        repeat until exists of button 1 of window 1
			        delay 1
			        end repeat
			        delay 2
			        keystroke return
#			        click button "Yes"
                end tell
            end tell
        end tell
    end run
EOF
