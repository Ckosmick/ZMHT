itemGrabasm:
; 2 - Line text boxes (biospark)
; .org 0x801B910
   ; nop
   ; nop
.org 0x801B8F2
 b 0x801B914

; 36 is appearance jingle
; 37 is new item
; 3A is expansion
; 42 is unknown item
; 4A is fully powered jingle

;additional options
;.org 0x801B8CC				; Play sound routine for abilities (Prevents music from cutting off)
;   bl PlaySound
;.org 0x801B886				; sound for unknown items
;   mov r0,0x3A   
;.org 0x801B898				; sound for abilities
;    mov r0,0x3A
;.org 0x801B8C8
;	mov r0,0x4A				; full power jingle

; .org 0x801B920
    ; .byte 14h ;makes ability messages two lines
; .org 0x801B950
    ; .byte 14h ;makes ability messages use the proper timer

.org 0x801B958				;time before an ability message can be closed (default 64h)
	mov		r0,32h
.org 0x801B962				;time before an expansion messages can be closed (default 64h)
	mov		r0,32h
	
.ifdef unkItemsasm
.org 0x801B958				;time before an ability message can be closed (default 64h)
	mov		r0,0h
.org 0x801B962				;time before an expansion messages can be closed (default 64h)
	mov		r0,0h
.endif

.org 0x801BAF0
	bl 		0x804F670		;refreshes beam GFX (thanks biospark)	
	b 		0x801BB00		;prevents going to status screen when getting an item
.org 0x8013172
	bl	EquipmentGet		;MorphBall
.org 0x8013B26
	bl	EquipmentGet		;SpeedBooster
.org 0x8013B3E
	bl	EquipmentGet		;HiJump
.org 0x8013B5E
	bl	EquipmentGet		;ScrewAttack
.org 0x8013B7E
	bl	EquipmentGet		;Varia
.org 0x8013BB6
	bl	EquipmentGet		;Gravity
.org 0x80133B0
	bl	EquipmentGet		;Grip
.org 0x8013B9E
	bl	EquipmentGet		;SpaceJump
.org 0x8013AC6
	bl	BeamGet				;LongBeam
.org 0x8013ADE
	bl	BeamGet				;IceBeam
.org 0x8013AF6
	bl	BeamGet				;WaveBeam
.org 0x8013BCE
	bl	BeamGet				;PlasmaBeam
.org 0x8013656
	ldrb	r1,[r2,0Ch]
	mov		r0,10h
	bl	BeamGet				;ChargeBeam	
.org 0x8013B0E
	bl	BeamGet				;Bombs