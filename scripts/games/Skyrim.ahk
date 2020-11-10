steamdID = 72850
exeTitle = TESV.exe

Run, pssuspend Kodi.exe
Run "C:\Program Files (x86)\Steam\Steam.exe" -applaunch %steamdID%

WinWaitActive, Skyrim
MouseClick, left, 650, 150

Process, Wait, %exeTitle%
Process, WaitClose, %exeTitle%
Run, pssuspend -r Kodi.exe
WinActivate, Kodi
