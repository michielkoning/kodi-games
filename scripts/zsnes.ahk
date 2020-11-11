#Persistent
#SingleInstance force
#Include Shared/XInput.ahk

rom = %1%

XInput_Init()

Run, "D:\snes\snes9x-x64.exe" "%rom%" -fullscreen

ProcessExist(Name){
	Process,Exist,%Name%
	return Errorlevel
}

Loop {
  Loop, 4 {
    if State := XInput_GetState(A_Index-1) {
      if (State.wButtons = 48 && State.bLeftTrigger > 250 && State.bRightTrigger > 250) {
        Process, Close, snes9x-x64.exe
      }
    }
    If !ProcessExist("snes9x-x64.exe")
      ExitApp
  }
  Sleep, 250
}
return
