.gba
.open "zm.gba","output.gba",0x8000000
; Labels
.include "ASM\Labels.asm"

; Options
.include "Options\Tweaks.asm"
.include "Options\Settings.asm"

; ASM
.include "ASM\shortDoors.asm"
.include "ASM\fiveByThreeMap.asm"
;.include "ASM\flare.asm"
.include "ASM\lowHealth.asm"
.include "ASM\hudColors.asm"
.include "ASM\minimapColors.asm"
.include "ASM\ballSpark.asm"
.include "ASM\beamBurst.asm"
;.include "ASM\betterRoll.asm"
.include "ASM\betterWallJump.asm"
;.include "ASM\chargeHeal.asm"
.include "ASM\GFX.asm"
.include "ASM\itemGrab.asm"
.include "ASM\itemToggle.asm"
.include "ASM\mapFix.asm"
.include "ASM\newPhysics.asm"
.include "ASM\pbsBeforeBombs.asm"
;.include "ASM\plasmaNerf.asm"
.include "ASM\removeCloseup.asm"
.include "ASM\rShot.asm"
;.include "ASM\scaleEndPercent.asm"
.include "ASM\setTimerValues.asm"
.include "ASM\smControls.asm"
.include "ASM\smProjectiles.asm"
.include "ASM\sparkSteering.asm"
.include "ASM\speedBall.asm"
;.include "ASM\startingItems.asm"
.include "ASM\startingRoom.asm"
.include "ASM\tractorBeam.asm"
.include "ASM\unkItems.asm"	
.include "ASM\unlockKraid.asm"
;.include "ASM\frozenWallJump.asm"
.include "ASM\powerBombJump.asm"
.include "ASM\noBombJumpDown.asm"
.include "ASM\imagoCocoonBlocksFix.asm"

; FREESPACE ASM
.include "Options\Freespace.asm"
.notice "Done." 
.close