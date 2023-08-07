.global _start
_start:
    MOV R0, #5
    MOV R1, #5
    MOV R5, #15

    CMP R0, R1      // Compare if R0 is greater than R1
    BGT greater     // Branch if greater
    BLT lesser      // Branch if lesser
    BEQ equal       // Branch if equal

greater:
    LSL R5, #2      // Logical Shift Left by two positions
    B end           // Branch to the end

lesser:
    LSR R5, #1      // Logical Shift Right by one position
    B end           // Branch to the end

equal:
    ROR R5, #1      // Rotate one position

end:
    // Termination sequence
    MOV R0, R5      // Move the result to R0
    MOV R7, #1      
    SWI 0           // Perform the syscall to exit the program
