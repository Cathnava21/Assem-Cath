.global _start
_start:
    MOV R0, #5
    MOV R1, #5
    MOV R5, #15

    CMP R0, R1 //compare if R0 is greater than R1
    BGT greater // Creater a label if the previous intructions is true
    BLT lesser // If R1 is less than R0 create this label
    BEQ equal // Both numbers are equal

    greater:
    LSL R5, #2 //Logical Shift Left two positions
    //SEQUENCE TO TERMINATE THE PROGRAM
    MOV R0, R5
    MOV R7, #1
    SWI 0

    lesser:
    LSR R5, #1 //Logical Shift Right two positions
    //SEQUENCE TO TERMINATE THE PROGRAM
    MOV R0, R5
    MOV R7, #1
    SWI 0

    equal:
    ROR R5, #1 //Rotate one position
    //SEQUENCE TO TERMINATE THE PROGRAM
    MOV R0, R5
    MOV R7, #1
    SWI 0