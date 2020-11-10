#SingleInstance ignore

Command = cd 'D:\Super Mario War\' {Enter} .\SuperMarioWar.exe {Enter}
WindowTitle = Super Mario War

Run, pssuspend Kodi.exe

Run, powershell.exe
WinWaitActive, Windows PowerShell

Send %Command%

WinWaitActive, %WindowTitle%
WinClose, Windows PowerShell
WinWaitClose, %WindowTitle%

Run, pssuspend -r Kodi.exe
