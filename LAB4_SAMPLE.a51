ORG 0000H            ; Start of the program
	MOV A, #21H          ; Load immediate value 21H into accumulator A
	MOV R0, A            ; Move the value of A into register R0
	MOVC A, @A+DPTR      ; Move code byte relative to DPTR (DPTR + A) into A
	MOV R1, A            ; Store the result in register R1
	MOV A, R0            ; Load the value of R0 back into A
	SWAP A               ; Swap the nibbles of A
	MOV R0, A            ; Move the swapped value back into R0
	MOVC A, @A+DPTR      ; Move code byte relative to DPTR (DPTR + A) into A
	ANL A, #0FH          ; Perform AND operation on A with 0FH (clear upper nibble)
	ANL 01H, #0FH        ; Perform AND operation on memory location 01H with 0FH
	MOVX @R0, A          ; Move the result in A to external memory at address in R0
	MOV A, R0            ; Load the value of R0 back into A
	SWAP A               ; Swap the nibbles of A again
	ANL DPH, #00H        ; Clear DPTR high byte (DPH) by ANDing it with 00H
	MOV DPL, A           ; Move the value of A into DPTR low byte (DPL)
	MOV A, R1            ; Load the value of R1 back into A
	MOVX @DPTR, A        ; Move the result in A to external memory at address in DPTR
END                  ; End of the program
