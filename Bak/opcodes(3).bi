Declare Sub CPU_NULL() 'Null function
Declare Sub Prefix_CB()
Declare Sub Add_AB()
Declare Sub Add_AC()
Declare Sub Add_AD()
Declare Sub Add_AE()
Declare Sub Add_AH()
Declare Sub Add_AL()
Declare Sub Add_AHL()
Declare Sub Add_AA()
Declare Sub Adc_AB()
Declare Sub Adc_AC()
Declare Sub Adc_AD()
Declare Sub Adc_AE()
Declare Sub Adc_AH()
Declare Sub Adc_AL()
Declare Sub Adc_AHL()
Declare Sub LD_SPD16()
Declare Sub LD_HLD16()
Declare Sub LD_HLAm()
Declare Sub Xor_A()
Declare Sub Nop()



Declare Sub Bit7H()


Dim Shared Opcodes(256) As Sub() =>_ 'Opcode Table
{@CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0x0
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0x1
 @CPU_NULL, @LD_HLD16, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0x2
 @CPU_NULL, @Ld_SPD16, @LD_HLAm, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0x3
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0x4
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0x5
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0x6
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0x7
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0x8
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0x9
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @Xor_A,_ '0xA
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0xB
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @Prefix_CB, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0xC
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0xD
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0xE
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL}
Dim Shared CB_Opcodes(256) As Sub() =>_ 'Prefix CB Opcode Table
{@CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0x0
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0x1
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0x2
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0x3
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0x4
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0x5
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0x6
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @Bit7H, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0x7
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0x8
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0x9
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0xA
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0xB
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0xC
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0xD
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL,_ '0xE
 @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL, @CPU_NULL}

Dim Shared OpLen(256) As UByte =>_ 'Opcode Length
{_
1,3,1,1,1,1,2,1,3,1,1,1,1,1,2,1,_ '0x0
2,3,1,1,1,1,2,1,2,1,1,1,1,1,2,1,_ '0x1
2,3,1,1,1,1,2,1,2,1,1,1,1,1,2,1,_ '0x2
2,3,1,1,1,1,2,1,2,1,1,1,1,1,2,1,_ '0x3
1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,_ '0x4
1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,_ '0x5
1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,_ '0x6
1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,_ '0x7
1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,_ '0x8
1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,_ '0x9
1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,_ '0xA
1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,_ '0xB
1,1,3,3,3,1,2,1,1,1,3,1,3,3,2,1,_ '0xC
1,1,3,0,3,1,2,1,1,1,3,0,3,0,2,1,_ '0xD
2,1,2,0,0,1,2,1,2,1,3,0,0,0,2,1,_ '0xE
2,1,2,1,0,1,2,1,2,1,3,1,0,0,2,1}  '0xF

Sub execOP()
	Opcodes(cpu.Opcode)()
	cpu.PC += OpLen(cpu.Opcode)
End Sub

Sub CPU_NULL()
	Print "NULL"
End Sub

Sub LD_SPD16
	cpu.SP = read16(cpu.PC + 1)
	Print "Stack Pointer: " & Hex(cpu.SP)
End Sub

Sub LD_HLD16
	writeHL(read16(cpu.PC + 1))
	Print Hex(cpu.HL)
End Sub

Sub LD_HLAm 'LD(HL-),A
	writeHL(getA()-1)
	Print cpu.HL
End Sub

Sub Xor_A
	Dim value As UByte
	value = getA()
	value Xor= getA()
	writeA(value)
End Sub


'CB Instrutions
Sub Prefix_CB()
	CB_Opcodes(read8(cpu.PC+1))()
End Sub
Sub Bit7H()
	cpu.AF and= &hFF7F
	cpu.AF Or= (getAF() And &h80)
	setflags(flags.Half)
	clearFlags(flags.sign)
End Sub
