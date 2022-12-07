#include <MsgBoxConstants.au3>
Run(@comspec & ' /c C:\Users\selenium\AppData\Local\Programs\Aspera\Aspera Connect\bin\asperaconnect.exe')

Const $sZipFile = 'C:\Users\selenium\Desktop\testData.zip'
Const $sDestFolder =  'C:\Users\selenium\Documents'

UnZip($sZipFile, $sDestFolder)
If @error Then Exit MsgBox ($MB_SYSTEMMODAL,"","Error unzipping file : " & @error)

;unzip the test data 
Func UnZip($sZipFile, $sDestFolder)
  If Not FileExists($sZipFile) Then Return SetError (1) ; source file does not exists
  If Not FileExists($sDestFolder) Then
    If Not DirCreate($sDestFolder) Then Return SetError (2) ; unable to create destination
  Else
    If Not StringInStr(FileGetAttrib($sDestFolder), "D") Then Return SetError (3) ; destination not folder
  EndIf
  Local $oShell = ObjCreate("shell.application")
  Local $oZip = $oShell.NameSpace($sZipFile)
  Local $iZipFileCount = $oZip.items.Count
  If Not $iZipFileCount Then Return SetError (4) ; zip file empty
  For $oFile In $oZip.items
    $oShell.NameSpace($sDestFolder).copyhere($ofile)
  Next
EndFunc 

;accept Aspera Connect Security Concern
WinWaitActive("IBM Aspera Connect - Security")
MsgBox($MB_SYSTEMMODAL, "AutoIt Scrpt is running", "IBM is activated. This message box will timeout after 3 seconds or select the OK button.", 3)
Sleep(500);
WinActivate("IBM Aspera Connect - Security")
Sleep(200);
ControlClick("IBM Aspera Connect","IBM Aspera Connect","[CLASS:Qt5157QWindowIcon; INSTANCE:4]")
Sleep(200);

;wait for open window
For $i = 1 To $CmdLine[0]
	$x = $CmdLine[$i]
	
	;enforce going to documents folder
        WinWaitActive("Open")
	controlClick("Open","","[CLASS:ToolbarWindow32; INSTANCE:4]","left",1,18,15)
	sleep(500);
	Send("{BS}");
	sleep(500);
	controlSetText("Open", "","[CLASS:Edit; INSTANCE:2]", "Documents")
	sleep(500);
	Send("{ENTER}")
	
	;Enter file name file
	controlSetText("Open", "","[CLASS:Edit; INSTANCE:1]", $x)
	Sleep(200);
	controlClick("Open","","[CLASS:Button; INSTANCE:1]")
	Sleep(200);
Next

MsgBox($MB_SYSTEMMODAL, "AutoIt Scrpt is completed", "Comleted", 3)
