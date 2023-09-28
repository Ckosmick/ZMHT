.org 0x804EECE      ;show charge animation for zero suit
    nop

.org 0x80523C4      ;no more hud charge meter display
    b 0x8052474

.org 0x8007DE4      ;match charge counter to regular charge animation speed
    cmp    r0,0x40

.org 0x8007D5E
	bne 0x8007D82
;.org 0x8007E34      ;regular charge functionality
;    b 0x8007EDE

.org 0x8055084
    mov    r15,r0

.org 0x80551f2 ; silent charge
nop
nop