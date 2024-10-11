## Instructions to transfer the value 10H to:
## - internal RAM location 10H

## Assembly code
ORG 0000H
MOV A, #10H       ; Load 10H into Accumulator A
MOV R2, #10H      ; Load 10H into register R2
MOV R0, A         ; Transfer the value in A to register R0
MOV R1, #30H      ; Load 30H into register R1
MOV A, R0         ; Transfer the value in R0 to Accumulator A
MOV R1, A         ; Transfer the value in A to register R1
MOV A, #0FFH      ; Load FFH into Accumulator A
MOV 10H, A        ; Store the value in Accumulator A into RAM location 10H
END

