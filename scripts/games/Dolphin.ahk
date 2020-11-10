DetectHiddenWindows, On
DetectHiddenText, On

Run, pssuspend Kodi.exe

Run, "D:\Wii\Dolphin.exe" "-e=%1%"
WinWaitActive, Dolphin 5.0 |
WinWaitClose, Dolphin 5.0 |
WinClose, Dolphin 5.0

Run, pssuspend -r Kodi.exe
WinActivate, Kodi