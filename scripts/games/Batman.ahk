steamdID = 35140
exeTitle = ShippingPC-BmGame.exe

Run, pssuspend Kodi.exe
Run "C:\Program Files (x86)\Steam\Steam.exe" -applaunch %steamdID%

WinWaitActive, Batman: Arkham Asylum GOTY Launcher
MouseClick, left, 250, 330

Process, Wait, %exeTitle%
Process, WaitClose, %exeTitle%
Run, pssuspend -r Kodi.exe
WinActivate, Kodi
