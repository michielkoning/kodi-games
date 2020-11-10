#Persistent
#SingleInstance force
#Include Shared/XInput.ahk

XInput_Init()

Run, "D:\Wii\Dolphin.exe" "%rom%"

Loop {
  Loop, 4 {
    if State := XInput_GetState(A_Index-1) {
      if (State.wButtons = 48 && State.bLeftTrigger > 250 && State.bRightTrigger > 250) {
        WinClose Dolphin.exe
        break
      }
    }
  }
  Sleep, 250
}
return

Process, Wait, Dolphin.exe
Process, WaitClose, Dolphin.exe
ExitApp