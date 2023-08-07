.global _start

.equ amark, 90
.equ bmark, 75
.equ cmark, 50

_start:
    MOV R5, #1
    LDR R6, =amark // Load the value at the memory address 'amark' into R6
    LDR R7, =bmark // Load the value at the memory address 'bmark' into R7
    LDR R8, =cmark // Load the value at the memory address 'cmark' into R8

     // Check for A grade
    CMP R5, R6
    BLT check_b // if the comparission is less than 90 go to check b

    LDR R1, =amessage
    LDR R2, =alen
    B print_message

    check_b:
    // Check for B grade
    CMP R5, R7
    BLT check_c // if the comparission is less than 75 go to check c

    LDR R1, =bmessage
    LDR R2, =blenn
    B print_message

    check_c:
    // Check for C grade
    CMP R5, R8
    BLT print_fail // if the comparission is less than 50 go to print fail 

    LDR R1, =cmessage
    LDR R2, =clen
    B print_message

    print_fail:
    LDR R1, =failmessage
    LDR R2, =faillen
    B print_message

    print_message:
    MOV R7, #4
    SWI 0

    MOV R7, #1
    SWI 0

.data
amessage:
    .asciz "Congratulations, you got an A.\n"
alen = .-amessage

bmessage:
    .asciz "Good job, you got a B.\n"
blenn = .-bmessage

cmessage:
    .asciz "Not bad, you got a C.\n"
clen = .-cmessage

failmessage:
    .asciz "Sorry, you got an F.\n"
faillen = .-failmessage
