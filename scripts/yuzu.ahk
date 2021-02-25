#Persistent
#SingleInstance force
#Include Shared/XInput.ahk

rom = %1%

XInput_Init()

Run, "C:\Users\Michiel\AppData\Local\yuzu\yuzu-windows-msvc\yuzu.exe" "%rom%"
WinWaitActive, yuzu
Send {F11}

ProcessExist(Name){
	Process,Exist,%Name%
	return Errorlevel
}

Loop {
  Loop, 4 {
    if State := XInput_GetState(A_Index-1) {
      if (State.wButtons = 48 && State.bLeftTrigger > 250 && State.bRightTrigger > 250) {
        Process, Close, yuzu.exe
      }
    }
    If !ProcessExist("yuzu.exe")
    ExitApp
  }
  Sleep, 250
}
return
