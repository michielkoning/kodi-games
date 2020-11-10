exeTitle = THUG2.exe

Run, pssuspend Kodi.exe
Run, %exeTitle%, D:\Thug2\Game
Process, Wait, %exeTitle%
Process, WaitClose, %exeTitle%
Run, pssuspend -r Kodi.exe
WinActivate, Kodi