Type mems
	bootROM(&h100) As UByte '256 Byte Boot ROM
	RAM(&h2000) As UByte '8K RAM
	OAM(&hA0) As UByte
	Stack(&h7F) As UByte 'Stack Space
	cartROM(&h8000) As UByte 
	bootDisable As UByte 'BootRom disable Flag
	'TODO: Add I/O Registers.
End Type
Dim Shared mem As mems

Sub write8(value As UByte, addr As UShort)
	
End Sub

Function read8(addr As UShort) As UByte
	Select Case addr
		Case &h0 To &hFF 'Boot ROM
			If mem.bootDisable = 0 Then 
				Return mem.bootROM(addr And &hFF)
			Else 
				Return mem.cartROM(addr)
			EndIf
		Case &hFF To &h7FFF
			Return mem.cartROM(addr)
		Case Else 
			Print "Error: Unhandled Memory Access at 0x" & Hex(addr)
			sleep
	End Select
End Function

Sub write16(value As UShort, addr As UShort)
	
End Sub

Function read16(addr As UShort) As UShort
	Dim value As UShort
Select Case addr
	Case &h0 To &hFF 'Boot ROM
		If mem.bootDisable = 0 Then 
			memcpy(@value,mem.bootROM(addr),2)
		Else 
			memcpy(@value,mem.cartROM(addr),2)
		EndIf
	Case &hFF To &h7FFF
		memcpy(@value,mem.cartROM(addr),2)
		Case Else 
			Print "Error: Unhandled Memory Access at 0x" & Hex(addr)
			sleep
	End Select
End Function
