.org 0x800817C
	ldr r0,=rToggle	;freespace/missile hijack
	mov r15,r0
.pool

.org 0x800815C
	ldr r0,=rToggle	;power bomb hijack, make the freespace value the same as missile hijack
	mov r15,r0
.pool