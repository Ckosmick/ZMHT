unkItemsasm:

;-----------
; Full Suit
;-----------
; start with full suit
.org 0x800BD7E
	bl      StartFullSuit
	
; display correct graphics
.org 0x800A692
	mov     r9,r0
	mov     r4,r1
	bl      ChangeSuit
.org 0x800B452
	bl      RestoreSuit
	
; display correct palette
.org 0x800B4AE
	beq     0x800B558

; status screen graphics
.org 0x8068DE0
	bl      StatusScreen


;-------
; Items
;-------
; display correct text
.org 0x801B84C
	bl      SwitchText
; play correct jingle
.org 0x801B886
	bl      GetJingleNumber
	b       0x801B8CA	
; play correct sound
.org 0x8071118
	bl      GetSoundNumber
	bl      PlaySound
	b       0x8071144
; Set no item to be unknown in the 3 groups
.org 0x807122A
	.byte 0xFF
.org 0x8071248
	.byte 0xFF
.org 0x8071252
	.byte 0xFF
	
;----------------
; Obtaining Suit
;----------------
; skip adding varia
.org 0x805CA36
	mov     r0,1
	b       0x805CA52
	
; only activate gravity if obtained
.org 0x80600EC
	ldrb    r1,[r2,0xE]
	strb    r1,[r2,0xF]
	b       0x8060318
	
; don't change varia's map tile with full suit
.org 0x806B212
    b       0x806B22E	
	
;------
; Text
;------
	
.org 0x844284C		; Plasma Beam
	.halfword 0x804E,0x8105,0x90,0xCC,0xC1,0xD3,0xCD,0xC1,0x40,0x82,0xC5,0xC1,0xCD,0xFE00,0x806E,0xFF00
	
.org 0x844289E		; Gravity Suit
	.halfword 0x8050,0x8105,0x87,0xD2,0xC1,0xD6,0xC9,0xD4,0xD9,0x40,0x93,0xD5,0xC9,0xD4,0xFE00,0x806E,0xFF00
	
.org 0x844293C		; Space Jump
	.halfword 0x804E,0x8105,0x93,0xD0,0xC1,0xC3,0xC5,0x40,0x8A,0xD5,0xCD,0xD0,0xFE00,0x806E,0xFF00
	
.org 0x8442D22		; Unknown Item
	.halfword 0x804A,0x8105,0x0095,0x00CE,0x00CB,0x00CE,0x00CF,0x00D7,0x00CE,0x0040,0x0089,0x00D4,0x00C5,0x00CD,0xFE00,0x806E,0xFF00
	
; replace status screen unknown item gfx
.org 0x8400E08
	.incbin "ASM\GFX\status.lz"
.org 0x8409d70
	.incbin "ASM\GFX\items.lz"
.org 0x83FEFB8
	.incbin "ASM\GFX\icons.lz"
;

;-------
; Chozo
;-------
;
; replace chozo statue gfx
.org 0x82C15F0
	.import "ASM\GFX\gravity.lz"
.org 0x82BF534
	.import "ASM\GFX\space.lz"
.org 0x82C2BC4
	.import "ASM\GFX\plasma.lz"
	
; replace chozo statue pal
.org 0x82C40F4
	.import "ASM\GFX\plasma_item.palette"
.org 0x82C4114
	.import "ASM\GFX\plasma_chozo.palette"
.org 0x82C0A58
	.import "ASM\GFX\space_item.palette"
.org 0x82C0A78
	.import "ASM\GFX\space_chozo.palette"
.org 0x82C2B24
	.import "ASM\GFX\gravity_item.palette"
.org 0x82C2B44
	.import "ASM\GFX\gravity_chozo.palette"
	
; change secondary sprites
.org 0x801528A
	mov     r0,1
.org 0x80152AE
	mov     r0,1
.org 0x80152D0
	mov     r0,1
.org 0x80152EC
	mov     r0,1

; change chozo statue OAM
.org 0x8015114
	.word 0x875F4E4	

; change ability OAM
; opening
.org 0x80163D4
	.word 0x82B5890
.org 0x80163E4
	.word 0x82B5890
.org 0x80163F4
	.word 0x82B5890
; opened
.org 0x8016438
	.word 0x82B58B0
.org 0x8016448
	.word 0x82B58B0
.org 0x8016458
	.word 0x82B58B0

;