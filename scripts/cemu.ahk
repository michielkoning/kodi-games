#Persistent
#SingleInstance force
#Include Shared/XInput.ahk

rom = %1%

XInput_Init()

Run "C:\Program Files\Cemu\Cemu.exe" -f -g "%rom%"

ProcessExist(Name){
	Process,Exist,%Name%
	return Errorlevel
}

Loop {
  Loop, 4 {
    if State := XInput_GetState(A_Index-1) {
      if (State.wButtons = 48 && State.bLeftTrigger > 250 && State.bRightTrigger > 250) {
        Process, Close, Cemu.exe
      }
    }
    If !ProcessExist("Cemu.exe")
      ExitApp
  }
  Sleep, 250
}
return
