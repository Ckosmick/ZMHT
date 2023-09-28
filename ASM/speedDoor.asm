.gba
.open "zm vanilla.gba","zm speeddoor.gba",0x8000000

.org 0x80598ac ;for doors, substitute "Current clipdata affecting action" from speed to beam, to trigger opening. unfortunately, it seems that doors  only open on next frame, so we also need to
bl hellojack

.org 0x805806e ;make doorcaps not solid if we have speedbooster active.
bl byejack ;

.org 0x8304054    ; use crocomire graphics for freespace
hellojack:
ldrb r1,[r0] ;load "Current clipdata affecting action"
cmp r1,0ch ;if not speed, exit
bne notit
mov r1,r13
ldrb r1,[r1,4] ;load reaction type(?)
cmp r1,81h ;if not door, exit
bne notit2
mov r1,7 ;if speed and door, substitute speed for beam instead
strb r1,[r0] ;also change it in memory, because there will be one check later. seems to be resored to normal before next clipdata check
b notit

notit2:
mov r1,0ch ;restore original value

notit:
sub r0,r1,1 ;partial execute overwritten. could optimize it away i suppose
mov r15,r14

byejack:
ldr r0,=30013d9h ;check if speedboosting
ldrb r0,[r0]
cmp r0,1 ;if not speedboosting, exit
bne bb

;check doorcap type
ldr r0,=300009ch
ldrh r4,[r0,1ch] ;load room width
mov r5,r13
ldrh r6,[r5,12h+4] ;load y of the tile being checked
mul r4,r6
ldrh r6,[r5,10h+4] ;load x
add r4,r6
lsl r4,r4,1
ldr r0,[r0,18h]
add r0,r4
ldrh r0,[r0]
cmp r0,36h ;check if blue doorcap
beq notbb
mov r4,2
neg r4,r4
and r0,r4
ldr r4,=04a2h ;ugh a-d range is ugly, can't and it away
cmp r0,r4 ;check for doorcaps that closed after entering the room
beq notbb
sub r0,10h
cmp r0,r4
beq notbb
sub r0,10h
cmp r0,r4
beq notbb
sub r0,10h
cmp r0,r4
bne bb
notbb:
mov r0,0 ;could jump to 805804ah ;air handler but there's not much there
pop r1
bx r1 ; i highly doubt this is ever called from non thumb, so could just pop r15

bb:
mov r0,1
str r0,[r2]
bx r14

.pool

.close