bootROm as
Sub loadBootROM
If FileExists("boot\boot.gb") Then 
	Open "boot\boot.gb" For Binary As #1
Else 
	Print "Please provide a valid bios rom"
	Sleep
EndIf
'Get #1,, cpu.bios()
close #1
End Sub