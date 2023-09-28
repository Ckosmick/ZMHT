ChargeHack:
	pop	r0
	lsl	r0,r0,18h
	cmp	r0,0h
	bne	@@notzero
	b	zero
@@notzero:
	ldr		r1,=0x300153B
	ldrb	r0,[r1]
	cmp		r0,0x0
	beq		@@continue2
	ldr		r0,=0x3001417
	ldrb	r0,[r0]
	mov		r1,2h
	and		r1,r0
	cmp		r1,0h
	bne		@@charge
	b		@@continue2
@@charge:
	cmp		r4,0x0
	beq		@@chargeshort
	cmp		r4,0x1
	beq		@@chargelong
	cmp		r4,0x2
	beq		@@chargeice
	cmp		r4,0x3
	beq		@@chargewave
	cmp		r4,0x4
	beq		@@chargeplasma
	b		@@continue2
@@chargeshort:
	mov		r4,0x6
	b		@@continue1
@@chargelong:
	mov		r4,0x7
	b		@@continue1
@@chargeice:
	mov		r4,0x8
	b		@@continue1
@@chargewave:
	mov		r4,0x9
	b		@@continue1
@@chargeplasma:
	mov		r4,0xA
	b		@@continue1
@@continue1:
	mov		r0,0x20
	add		r0,r0,r5
	mov		r5,r0
	ldr		r1,=0x300153B
	ldrb	r0,[r1]
	sub		r0,r0,0x1
	strb	r0,[r1]
	cmp		r0,0x0
	bne		@@continue2
	mov		r0,0x8
	lsl		r0,r0,0x8
	ldr		r1,=0x3001416
	strh	r0,[r1]

@@continue2:
	ldr		r0,=03000BECh
	ldrh	r1,[r0]
	ldr		r0,=3000BEEh
	ldrh	r2,[r0]
	b		returntocode
zero:
	ldr		r0,=0804F2a2h
	mov		r15,r0

returntocode:
	ldr		r0,=0804F18Ch
	mov		r15,r0
.pool