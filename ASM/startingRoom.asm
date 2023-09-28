startingRoomasm:

.org 0x8060F5C
    ldr     r0,=AreaID
    mov     r1,5			; new area
    strb    r1,[r0]
    mov     r1,0x38			; new door
    strb    r1,[r0,2h]
    ldr     r0,=HideHudFlag
    mov     r1,0
    strh    r1,[r0]
    ldr     r0,=0x3000C75
    strb    r1,[r0]
	mov     r0,0x17			; music track ; E
	bl      0x80039F4
    b       0x8060FDA
    .pool