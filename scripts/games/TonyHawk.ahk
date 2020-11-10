#SingleInstance ignore

Game = %1%
if (Game = "Thug2")
{
	Command = .\thug2.ps1
	ExeTitle = THUG2.exe
}  
Else if (Game = "Thug") 
{
	Command = .\thug.ps1 
	ExeTitle = THUG.exe
} 
Else if (Game = "Thps4") 
{
	Command = .\thps4.ps1 
	ExeTitle = Skate4.exe
} 
Else 
{
	Command = .\thaw.ps1 
	ExeTitle = THAW.exe
} 

Run, pssuspend Kodi.exe

Run, powershell.exe
WinWaitActive, Windows PowerShell

Send %Command%  {Enter}

Process, Wait, %ExeTitle%
WinClose, Windows PowerShell
Process, WaitClose, %ExeTitle%

Run, pssuspend -r Kodi.exe
