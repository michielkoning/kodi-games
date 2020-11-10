#Persistent
#SingleInstance force
#Include Shared/XInput.ahk

XInput_Init()

Run "C:\Program Files\Cemu\Cemu.exe" -f -g

Loop {
  Loop, 4 {
    if State := XInput_GetState(A_Index-1) {
      if (State.wButtons = 48 && State.bLeftTrigger > 250 && State.bRightTrigger > 250) {
        WinClose Cemu.exe
        break
      }
    }
  }
  Sleep, 250
}
return
