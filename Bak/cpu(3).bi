Type CPUS
	AF As UShort
	BC As UShort
	DE As UShort
	HL As UShort
	SP As UShort
	PC As UShort
	Opcode As UByte
	
End Type
Enum flags
		null1
		null2
		null3
		null4
		Carry
		Half
		Sign
		Zero
	End Enum
Dim Shared cpu As CPUS

Sub fetchOP()
	cpu.Opcode = read8(cpu.PC)
End Sub

Sub setFlags(flag As UByte)
	cpu.AF Or= 1 Shl flag	
End Sub

Sub clearFlags(flag As UByte)
	cpu.AF And= Not(1 Shl flag)
End Sub

Sub writeA(value As UByte)
	cpu.AF And= &hFF00
	cpu.AF Or= value Shl 8
End Sub

Sub writeC(value As UByte)
	cpu.BC And= &hFF
	cpu.BC Or= value
End Sub

Sub writeB(value As UByte)
	cpu.BC And= &hFF00
	cpu.BC Or= value Shl 8
End Sub

Sub writeE(value As UByte)
	cpu.DE And= &hFF
	cpu.DE Or= value
End Sub

Sub writeD(value As UByte)
	cpu.DE And= &hFF00
	cpu.DE Or= value Shl 8
End Sub

Sub writeL(value As UByte)
	cpu.HL And= &hFF
	cpu.HL Or= value 
End Sub

Sub writeH(value As UByte)
	cpu.HL And= &hFF00
	cpu.HL Or= value Shl 8
End Sub

Sub writeHL(value As UShort)
	cpu.HL = value
End Sub

Sub writeAF(value As UShort)
	cpu.AF = value
End Sub

Sub writeBC(value As UShort)
	cpu.BC = value
End Sub

Sub writeDE(value As UShort)
	cpu.DE = value
End Sub

Function getA() As UByte
	Return cpu.AF Shr 8
End Function

Function getF() As UByte
	Return cpu.AF And &hFF
End Function

Function getB() As UByte
	Return cpu.BC Shr 8
End Function

Function getC() As UByte
	Return cpu.BC And &hFF
End Function

Function GetD() As UByte
	Return cpu.DE Shr 8
End Function

Function getE() As UByte
	Return cpu.DE And &hFF
End Function

Function getH() As UByte
	Return cpu.HL Shr 8
End Function

Function getL() As UByte
	Return cpu.HL And &hFF
End Function

Function getAF() As UShort
	Return cpu.AF
End Function

Function getBC() As UShort
	Return cpu.BC
End Function

Function getDE() As UShort
	Return cpu.DE
End Function

Function getHL() As UShort
	Return cpu.HL
End Function

