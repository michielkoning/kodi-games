#SingleInstance ignore

Game = %1%
if (Game = "GuitarHero3")
{
	Location = "D:\Guitar Hero 3\gh3.exe" 
	ExeTitle = gh3.exe
}  
Else 
{
	Location = "D:\Guitar Hero World Tour\GHWT.exe" 
	ExeTitle = GHWT.exe
} 

Run, pssuspend Kodi.exe

Run, %Location%

Process, Wait, %ExeTitle%
Process, WaitClose, %ExeTitle%

Run, pssuspend -r Kodi.exe
