; Kraid nails always shoot fast
.org 0x801b65A ;Nails rotation speed
	nop
	nop
.org 0x801a864 ;Nails velocity
	nop
	nop
	
; kraid gadora shoots (secondary sprite spawns incorrectly under it)
.org 0x804a0d2
	nop
	nop
	
; Walljump animation frame timers. adjusting these can reduce or lengthen WJ delay
.org 0x8250174
.byte 1 ; Frame 1. Default 2h
.org 0x8250184
.byte 2 ; Frame 2. Default 2h
.org 0x8250194
.byte 0 ; Frame 3. Default 2h

; Press B to skip elevator/boss intro cutscenes. 	
.org 0x8061116
	nop
; Replace track of statue activation cutscene
.org 0x805CB14
	mov r1,0Ah

; Ridley aggro damage threshold
.org 0x8031DB6
	cmp r1, 1h ; Default: 200 = C8 damage

; Mecha Ridley 100% mode check
.org 0x804C038
	cmp r0,0Ah	; default 64h
	ble 804C044h ; default bne

; Gravity does not protect against heat. Only protects against lava if Varia is also equipped.
.org 0x8008306
	mov r0, 30h		; Used to AND current suits for varia + gravity
.org 0x800830A 
	cmp r0, 30h		; Compare Check for varia + gravity
.org 0x800830C 
	bne 800831Eh	; Branch if not equal to varia + gravity

.org 0x805EF8A ; Fast room transitions
    b       0x805EF94

; Enemies do not experience stun on hardmode
.org 0x801128A
	cmp r0,2h
.org 0x801128C
	beq 80112B6h

; Enable walljumping with space jump
.org 0x8006138
	.halfword 0x61D0
.org 0x8008F72
	bgt 8008F92h
.org 0x8008F90
	nop

; Enable speedball jumping
.org 0x8006B48
	b 8006B50h
.org 0x80095D0
	add r1,6Ah

;Time Attack is available at the file select screen without a button combination (Incomplete)
;.org 0x807DAC0
;	b 807DAD8h

; Hard difficulty can be selected for any new game
.org 0x807DE0E
	bne 807DE34h

; Changes the shinespark impact pose to something faster.
; The Pose can be configured. For example try Pose 08: Falling
.org 0x8009DE8
	mov r0,0Ch ;Bonk pose set to Spinning

; Fight Ridley before getting Gravity Suit
.org 0x80322D2
	b 80322D8h

; Space Jump in liquids without the gravity suit
.org 0x8008F50
	b 8008F5Ah
	
; Black Pirates made weak to all beams
.org 0x802CC16
	b 802CC36h

; Lets you stay Power Gripped to ledges During a Super Missile/PB explosion
.org 0x8009608
	b 800961Ch
.org 0x800979C
	b 80097ACh
.org 0x80098BC
	b 80098CCh
	
; Imago's Doors will Unlock As Soon As He Dies
.org 0x8043178
	b 804318Ch
	
; Deorem (King Worm/Charge Beam Worm) won't run away
.org 0x8023158
	b 8023164h

; Skips the statue activation cutscenes
; .org 0x8019C8A ;Kraid Statue Activation
	; b 8019C9Eh
; .org 0x8033B3C ;Ridley Statue Activation
	; b 8033B56h
	
; Skips ridley encounter cutscene
;.org 0x8032532
;	b 8032538h
	
 .org 0x8062E5C ; No sounds after landing ship in intro
;118 = Just ship opening noise
;36 = appearance
 	.halfword 36h
	
; No chozo hints (Makes all statues sit)
;.org 0x8013E00
;	.halfword 0x4004
;.org 0x8013E08
;	.halfword 0x4004
;.org 0x8013E10
;	.halfword 0x4004
;.org 0x8013E18
;	.halfword 0x4004
;.org 0x8013E20
;	.halfword 0x4004
;.org 0x8013E28
;	.halfword 0x4004
;.org 0x8013E30
;	.halfword 0x4004
;.org 0x8013E38
;	.halfword 0x4004
; [No chozo hints] fixes room with first chozo statue
;.org 0x8340B4D
;	.byte 0
;.org 0x8340B54
;	.word 0x8364F4C

; Remove minimap
;.org 0x8052570
;	b 8052644h

; Add minimap tiles
;.org 0x806A61A
;	mov r3,80h
;.org 0x806A61C
;	lsl r3,r3,7h

; Add elevators (+ Remove cutscenes) (Do not use for vanilla)
;.org 0x80580FC
;	b 805812Ch
;.org 0x8058126
;	b 805812Ch

; Add elevators (Keep cutscenes)
;.org 0x8058126
;	b 805812Ch
	
; Samus will no longer glow when leaving morph ball mode
;.org 0x800951E
;	.byte 0x0
;.org 0x8009572
;	.byte 0x0

; Samus' Ship will no longer refill energy or ammunition
;.org 0x8045132
;	b 8045212h
;.org 0x804521A
;	mov r0,0h
;.org 0x8045228
;	mov r1,16h
;.org 0x8045236
;	b 804523Eh
	
; No more beeping when samus is below 30 energy
;.org 0x8052888
;	b 80528B4h

; A in the pause menu no longer opens a worldmap
;.org 0x806E1AA
;	mov r0,2h

; New Game+ Item collection & timer is always on.
;.org 0x806896C
;	b 806897Ah	
	
; ; The Chozodia/Mothership tube can be destroyed at any time
; .org 0x8046476
;	.halfword 0xE004

; ; All hatches with more than one hit's worth of “health” will flash.
; 0x5E793 = 0D to 0E
; ; Amount of hits required to open hatches: (Maximum is Fh times)
; .org 0x8345CB2	; Blue, 0h default
	; .byte 0h
; .org 0x8345CB6	; Red, 0h default
	; .byte 0h
; .org 0x8345CBA	; Green, 0h default
	; .byte 0h
; .org 0x8345CBE	; Yellow, 0h default
	; .byte 0h


; ; Separates missile/super missile vulnerabilities. Something weak to missiles probably won't be weak to supers, and vice-versa.
; .org 0x8050AC2
	; .byte 0x4 ;sprite missile vulnerability only includes normal missiles
; .org 0x8345CB4
	; .byte 0x4 ;missile doors only open with normal missiles
; .org 0x8345ABC
	; .byte 0x4 ;super missiles can't break never reform missile blocks
; .org 0x8345ABE
	; .byte 0x4 ;super missiles can't break no reform missile blocks

; ;PSEUDO SCREW ATTACK DAMAGE VALUES
; ;short damage
; .org 0x80105A4     
	; mov     r1,2h
; ;long damage
; .org 0x80105B2     
	; mov     r1,3h
; ;ice damage
; .org 0x80105BC     
	; add     r0,r1,1
; ;wave damage
; .org 0x80105CA     
	; add     r0,r1,1
; ;plasma damage
; .org 0x80105D8     
	; add     r0,r1,1

; ; BEAM DAMAGE VALUES
; ; .org 0x804FFEA 
	; ; mov     r3,2h          ; short
; ; .org 0x804FFFC 
	; ; mov     r3,3h          ; long
; ; .org 0x805001A 
	; ; mov     r3,4h          ; long Ice
; ; .org 0x805002C 
	; ; mov     r3,3h          ; Ice
; ; .org 0x8050052 
	; ; mov     r3,5h          ; Long Ice wave
; ; .org 0x8050064 
	; ; mov     r3,4h          ; Long Wave
; ; .org 0x805007E 
	; ; mov     r3,4h          ; Ice Wave
; ; .org 0x8050090 
	; ; mov     r3,3h          ; Wave
; .org 0x80500BE 
	; mov     r3,3h          ; Long Ice Wave Plasma,__Default 6h
; .org 0x80500D8 
	; mov     r3,3h          ; Long wave Plasma,______Default 5h
; .org 0x80500FA 
	; mov     r3,3h          ; Ice Long/Wave Plasma,__Default 5h
; .org 0x805010C 
	; mov     r3,2h          ; Ice Plasma,____________Default 4h
; .org 0x8050126 
	; mov     r3,2h          ; Long/Wave Plasma,______Default 4h
; .org 0x8050138 
	; mov     r3,2h          ; Plasma,________________Default 3h
; ; .org 0x805015C 
	; ; mov     r3,8h          ; Charged Short
; ; .org 0x8050174 
	; ; mov     r3,0Ch         ; Charged Long
; ; .org 0x8050192 
	; ; mov     r3,10h         ; Charged Long Ice
; ; .org 0x80501A4 
	; ; mov     r3,0Ch         ; Charged Ice
; ; .org 0x80501CA 
	; ; mov     r3,14h         ; Charged Long Ice Wave
; ; .org 0x80501DC 
	; ; mov     r3,10h         ; Charged Long Wave
; ; .org 0x80501F6 
	; ; mov     r3,10h         ; Charged Ice Wave
; ; .org 0x8050208 
	; ; mov     r3,0Ch         ; Charged Wave
; .org 0x805023C 
	; mov     r3,0Ch         ; Charged Long Ice Wave Plasma,__Default 18h
; .org 0x8050256 
	; mov     r3,0Ah         ; Charged Long Wave Plasma,______Default 14h
; .org 0x8050278 
	; mov     r3,0Ah         ; Charged Long/Wave Ice Plasma,__Default 14h
; .org 0x805028A 
	; mov     r3,8h         ; Charged Ice Plasma,_____________Default 10h
; .org 0x80502A4 
	; mov     r3,8h         ; Charged Long/Wave Plasma,_______Default 10h
; .org 0x80502B6 
	; mov     r3,6h         ; Charged Plasma,_________________Default 0Ch
	
; Energy Tank Values
;.org 0x83459C4 ;Easy, 100 Default
;	.byte 0x64
;.org 0x83459C8 ;Normal, 100 Default
;	.byte 0x64
;.org 0x83459CC ;Hard, 50 Default
;	.byte 0x32

; Missile Tank Values
;.org 0x83459C5 ;Easy, 5 Default
;	.byte 0x05
;.org 0x83459C9 ;Normal, 5 Default
;	.byte 0x05
;.org 0x83459CD ;Hard, 2 Default
;	.byte 0x02

; Super Missile Tank Values
;.org 0x83459C6 ;Easy, 2 Default
;	.byte 0x02
;.org 0x83459CA ;Normal, 2 Default
;	.byte 0x02
;.org 0x83459CE ;Hard, 1 Default
;	.byte 0x01

; Power Bomb Tank Values
;.org 0x83459C7 ;Easy, 2 Default
;	.byte 0x02
;.org 0x83459CB ;Normal, 2 Default
;	.byte 0x02
;.org 0x83459CF ;Hard, 1 Default
;	.byte 0x01
	
; Starting Energy/Ammo (Deprecated by startingItems ASM)
;.org 0x83459C0
;	.byte 0x63 ;Energy, Default 99
;.org 0x83459C1
;	.byte 0x0 ;Missiles, Default 0
;.org 0x83459C2
;	.byte 0x0 ;Super Missiles, Default 0
;.org 0x83459C3
;	.byte 0x0 ;Power Bombs, Default 0
	
; Energy/Ammo Drops
;.org 0x8012F00
;	.byte 0x5 ;small energy drop value, default 5
;.org 0x8012F20
;	.byte 0x14 ;large energy drop value, default 20 (14 in hex)
;.org 0x8012F40
;	.byte 0x2 ;missile drop value, default 2
;.org 0x8012F60
;	.byte 0x2 ;super missile drop value, default 2
;.org 0x8012F80
;	.byte 0x1 ;power bomb drop value, default 1