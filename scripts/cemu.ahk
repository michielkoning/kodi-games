#Persistent
#SingleInstance force
#Include XInput.ahk

XInput_Init()

Run "C:\Program Files\Cemu\Cemu.exe" -f -g "D:\WiiU\Games\Captain Toad Treasure Tracker [AKBP0101]\code\Kinopio.rpx"

Loop {
  Loop, 4 {
    if State := XInput_GetState(A_Index-1) {
      if (State.wButtons = 48 && State.bLeftTrigger > 250 && State.bRightTrigger > 250) {
        WinClose Cemu.exe
      }
    }
  }
  Sleep, 250
}
return
