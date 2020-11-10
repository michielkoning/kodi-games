Run, pssuspend Kodi.exe
Run, fifa17.exe, D:\Origin\FIFA 17

Process, Wait, FIFA17.exe
Sleep, 1000
MouseMove, 99999, 999999
Process, WaitClose, FIFA17.exe
Run, pssuspend -r Kodi.exe
WinActivate, Kodi
WinClose, Origin