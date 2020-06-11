Sub loadBootROM
	If FileExists("boot\boot.gb") Then 
		Open "boot\boot.gb" For Binary As #1
	Else 
		Print "Place at valid Bootrom in the boot folder"
		Sleep
	EndIf
	Get #1,, mem.bootROM() 
	Close #1
End Sub

Sub loadGameROM()
	If FileExists("roms\tetris.gb") Then 
		Open "roms\tetris.gb" For Binary As #1
	Else
		Print "Please Provide a valid game ROM
	EndIf
	Get #1,, mem.cartROM()
	Close #1
End Sub
