Sub loadBootROM
	If FileExists("boot\boot.gb") Then
		Dim f As UByte = FreeFile
		Open "boot\boot.gb" For Binary As #f
		Get #f,, mem.bootROM()
		Close #f
	Else
		Print "Place at valid Bootrom in the boot folder"
		Sleep
	EndIf
End Sub

Sub loadGameROM()
	If FileExists("roms\tetris.gb") Then
		Dim f As UByte = FreeFile
		Open "roms\tetris.gb" For Binary As #f
			Get #f,, mem.cartROM()
	Close #f
	Else
		Print "Please Provide a valid game ROM"
	EndIf
End Sub
