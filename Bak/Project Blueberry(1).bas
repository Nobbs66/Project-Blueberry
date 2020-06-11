#Include "fbgfx.bi"
#Include "crt.bi"
#Include "file.bi"
Using fb
ScreenRes(320,288,32)
#Undef getC 'This C Function is useless for us, so let's get rid of it
#Include "mem.bi"
#Include "files.bi"
#Include "cpu.bi"
#Include "opcodes.bi"


Sub init()
	loadBootROM()
	loadGameROM()
	cpu.PC = 0
End Sub

Sub Main()
	
	Do 'Main Loop
		fetchOP()
		Print Hex(cpu.Opcode)
		execOP()
		sleep
	Loop While Not MultiKey(SC_ESCAPE)
	Print "exiting"
End Sub
init()
Main()
