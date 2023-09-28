EquipmentGet:
	orr		r1,r0
	strb	r1,[r2,0Eh]
	ldrb	r1,[r2,0Fh]
.ifndef unkItemsasm
	mov		r3,24h		;checks for space jump or grav and prevents their activation
	and		r3,r0       ;
	cmp		r3,0h       ;
	bne		@@Return    ;
.endif
	orr		r0,r1
	strb	r0,[r2,0Fh]
@@Return:
	bx		r14
	
BeamGet:
	orr		r1,r0
	strb	r1,[r2,0Ch]
	ldrb	r1,[r2,0Dh]
.ifndef unkItemsasm
	mov		r3,8h		;checks for plasma and prevents its activation
	and		r3,r0       ;
	cmp		r3,0h       ;
	bne		@@Return    ;
.endif
	orr		r0,r1
	strb	r0,[r2,0Dh]
@@Return:
	bx		r14
