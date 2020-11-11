#Persistent
#SingleInstance force
#Include Shared/XInput.ahk

rom = %1%

XInput_Init()

Run, "D:\Wii\Dolphin.exe" "-e=%rom%"

ProcessExist(Name){
	Process,Exist,%Name%
	return Errorlevel
}

Loop {
  Loop, 4 {
    if State := XInput_GetState(A_Index-1) {
      if (State.wButtons = 48 && State.bLeftTrigger > 250 && State.bRightTrigger > 250) {
        Process, Close, Dolphin.exe
      }
    }
    If !ProcessExist("Dolphin.exe")
      ExitApp
  }
  Sleep, 250
}
return
