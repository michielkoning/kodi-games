#SingleInstance ignore

ExeTitle = THPS12.exe

Run, pssuspend Kodi.exe

Run "D:\Epic Games\TonyHawksProSkater\THPS12.exe"

Process, Wait, %ExeTitle%
Process, WaitClose, %ExeTitle%

Run, pssuspend -r Kodi.exe
