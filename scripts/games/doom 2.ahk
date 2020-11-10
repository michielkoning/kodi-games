#SingleInstance ignore

Command = cd 'D:\Doom 2' {Enter} .\zdoom.exe {Enter}
ExeTitle = zdoom.exe

Run, pssuspend Kodi.exe

Run, powershell.exe
WinWaitActive, Windows PowerShell

Send %Command%  {Enter}

Process, Wait, %ExeTitle%
WinClose, Windows PowerShell
Process, WaitClose, %ExeTitle%

Run, pssuspend -r Kodi.exe
