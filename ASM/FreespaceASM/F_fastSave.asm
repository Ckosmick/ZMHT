fastSave:
	push r14 ; Current Sprite in r2
    mov r1,#0x35
    ldrb r0,[r2,r1]
    cmp r0,#0x1
    beq @@SkipSave
    push r1,r2
    ldr r0,=ProcessSRAMWriting
    bl @@CallR0
    pop r1,r2
    strb r0,[r2,r1] ; Write result
@@SkipSave:
    mov r0,#0x2F
    ldrb r3,[r2,r0] ; Load Array Offset
    ldrh r0,[r2,#0x16]
    mov r1,#0x1
    and r0,r1
    cmp r0,#0x0
    beq @@WritePal
    mov r0,#0x2
    @@WritePal:
    mov r1,#0x20
    strb r0,[r2,r1]
    ldr r1,=SpriteData
    mov r2,#0x38
    mul r3,r2
    add r1,r3
    add r1,#0x20
    strb r0,[r1,#0x0]
    pop pc
    .pool

@@CallR0:
    mov r15,r0