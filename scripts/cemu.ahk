#Persistent
#SingleInstance force
#Include Shared/XInput.ahk

rom = %1%

XInput_Init()

Run "C:\Program Files\Cemu\Cemu.exe" -f -g "%rom%"

Loop {
  Loop, 4 {
    if State := XInput_GetState(A_Index-1) {
      if (State.wButtons = 48 && State.bLeftTrigger > 250 && State.bRightTrigger > 250) {
        Process, Close, Cemu.exe
      }
    }
  }
  Sleep, 250
}
return

Process, Wait, Cemu.exe
Process, WaitClose, Cemu.exe
ExitApp