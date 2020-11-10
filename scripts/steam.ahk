steamdID = %1%
exeTitle = %2%
splashWindowTitle = %3%

Run, pssuspend Kodi.exe
Run "C:\Program Files (x86)\Steam\Steam.exe" -applaunch %steamdID% -nolauncher -novideo

if splashWindowTitle
{
  WinWaitActive %splashWindowTitle%
  Send {Enter}
}

Process, Wait, %exeTitle%
Process, WaitClose, %exeTitle%
Run, pssuspend -r Kodi.exe
