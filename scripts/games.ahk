#SingleInstance force

ExeTitle = %1%.exe
Location = %2%

Run, pssuspend Kodi.exe

Run, %ExeTitle%, %Location%

Process, Wait, %ExeTitle%
Process, WaitClose, %ExeTitle%
Run, pssuspend -r Kodi.exe
