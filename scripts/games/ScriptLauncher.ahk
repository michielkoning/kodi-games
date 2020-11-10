#SingleInstance ignore

Game = %1%
if (Game = "SuperMarioWar")
{
	Command = cd 'D:\Super Mario War\' {Enter} .\SuperMarioWar.exe {Enter}
	WindowTitle = Super Mario War
}
Else if (Game = "Thug2")
{
	Command = cd 'D:\Thug2\Game' {Enter} .\THUG2.exe {Enter}
	WindowTitle = Tony Hawk's Underground 2
}  
Else 
{
	Command = cd 'D:\THAW\Game' {Enter} .\THAW.exe {Enter}
	WindowTitle = Tony Hawk's American Wasteland
} 

Run, pssuspend Kodi.exe

Run, powershell.exe
WinWaitActive, Windows PowerShell

Send %Command%

WinWaitActive, %WindowTitle%
WinClose, Windows PowerShell
WinWaitClose, %WindowTitle%

Run, pssuspend -r Kodi.exe
