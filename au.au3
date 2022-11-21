
#include <MsgBoxConstants.au3>

MsgBox($MB_SYSTEMMODAL, "AutoIt Scrpt is running", "This message box will timeout after 10 seconds or select the OK button. 13:32", 10)

Run(@comspec & ' /c C:\Users\selenium\AppData\Local\Programs\Aspera\Aspera Connect\bin\asperaconnect.exe')

MsgBox($MB_SYSTEMMODAL, "AutoIt Scrpt is Runing", "Aspera Start completed", 10)

WinWaitActive("IBM Aspera Connect")
MsgBox($MB_SYSTEMMODAL, "AutoIt Scrpt is Runing", "Aspera Connect window found completed", 10)

Sleep(500);
While WinExists("IBM Aspera Connect")
	Sleep(200);
	ControlClick("IBM Aspera Connect","_allowBtnWindow","[CLASS:Qt5QWindowIcon; INSTANCE:4]")
WEnd
MsgBox($MB_SYSTEMMODAL, "AutoIt Scrpt is completed", "Comleted 14:05", 10)

