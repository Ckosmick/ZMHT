/* 
makes hatches in MZM three blocks tall.
you will still have to edit each tileset's tile table to be 3 blocks tall.

a collective effort of yohann, somerando, cosmic
yohann- hex tweaks, finding stuff
somerando- finding stuff, rle re-encoder
cosmic- this asm, graphics and tilemap edits
*/

.org 0x85d940C
 .incbin "GFX\genericbg.gfxraw"

.org 0x83655A0
 .incbin "GFX\hatches.tilemap"

.org 0x8364F80
 .incbin "GFX\transition.rletilemap"

; prevents bottom block from opening hatches
.org 0x805AF66
 .byte 0x2

; bottom block of hatches no longer updated
.org 0x805E9FC 
 .byte 0x0,0x0,0x0,0x0
.org 0x805EA3C 
 .byte 0x0,0x0,0x0,0x0
.org 0x805E9B0
 .byte 0x0,0x0,0x0,0x0
; for hatches overriden i.e. already opened red/green/yellow hatches
.org 0x805EB7E
 .byte 0x0,0x0,0x0,0x0
.org 0x805EBBC
 .byte 0x0,0x0,0x0,0x0