#include "_Zip.au3"
#include <MsgBoxConstants.au3>
Run(@comspec & ' /c C:\Users\selenium\AppData\Local\Programs\Aspera\Aspera Connect\bin\asperaconnect.exe')

WinWaitActive("IBM Aspera Connect - Security")

_Zip_UnzipAll('C:\Users\selenium\Deskstop\testData.zip', '\C:\Users\selenium\Documents', 0)

MsgBox($MB_SYSTEMMODAL, "AutoIt Scrpt is running", "IBM is activated. This message box will timeout after 3 seconds or select the OK button.", 3)
Sleep(500);

WinActivate("IBM Aspera Connect - Security")
Sleep(200);
ControlClick("IBM Aspera Connect","IBM Aspera Connect","[CLASS:Qt5157QWindowIcon; INSTANCE:4]")
Sleep(200);


 Local Const $arrayLength = UBound($CmdLine)

For $i = 1 to $arrayLength Step +1
	WinWaitActive("Open")
	controlSetText("Open", "","[CLASS:Edit; INSTANCE:1]", $CmdLine[$i])
	Sleep(200);
	controlClick("Open","","[CLASS:Button; INSTANCE:1]")
Next 

 
MsgBox($MB_SYSTEMMODAL, "AutoIt Scrpt is completed", "Comleted", 3)
