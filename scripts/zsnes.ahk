#Persistent
#SingleInstance force
#Include Shared/XInput.ahk

XInput_Init()

Run, "D:\snes\snes9x-x64.exe" -fullscreen "%rom%"

Loop {
  Loop, 4 {
    if State := XInput_GetState(A_Index-1) {
      if (State.wButtons = 48 && State.bLeftTrigger > 250 && State.bRightTrigger > 250) {
        WinClose snes9x-x64.exe
        break
      }
    }
  }
  Sleep, 250
}
return

Process, Wait, snes9x-x64.exe
Process, WaitClose, snes9x-x64.exe
ExitApp