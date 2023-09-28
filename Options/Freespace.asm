;
; FREESPACE ASM
;

.org 0x8043DF0 ; Unused Crocomire AI
.area 0x2EC
.ifdef chargeHealasm
 .include "ASM\FreespaceASM\F_chargeHeal.asm"
 .notice "chargeHeal"
.endif
.ifdef itemGrabasm
 .include "ASM\FreespaceASM\F_itemGrab.asm"
 .notice "itemGrab"
.endif
.ifdef scaleEndPercentasm
 .include "ASM\FreespaceASM\F_scaleEndPercent.asm"
 .notice "scaleEndPercent"
.endif
.ifdef powerBombJumpasm
 .include "ASM\FreespaceASM\F_powerBombJump.asm"
 .notice "powerBombJump"
.endif
.ifdef noBombJumpDownasm
 .include "ASM\FreespaceASM\F_noBombJumpDown.asm"
 .notice "noBombJumpDown"
.endif
.endarea

.org 0x8304054 ; Croco GFX, unused
.area 0x3094
.ifdef smProjectilesasm
ImNotAWrapper:
	ldr	r0,=AddSpeeds
	mov	r15,r0
.pool
.endif
.ifdef ballSparkasm
 .include "ASM\FreespaceASM\F_ballSpark.asm"
 .notice "ballSpark"
.endif
.ifdef betterRollasm
 .include "ASM\FreespaceASM\F_betterRoll.asm"
 .notice "betterRoll"
.endif
.ifdef rShotasm
 .include "ASM\FreespaceASM\F_rShot.asm"
 .notice "rShot"
.endif
.ifdef speedBallasm
 .include "ASM\FreespaceASM\F_speedBall.asm"
 .notice "speedBall"
.endif
.ifdef tractorBeamasm
DrawPickupWrapper:
	ldr	r0,=DrawPickup
	mov	r15,r0
.pool
.endif
.ifdef unkItemsasm
 .include "ASM\FreespaceASM\F_unkItems.asm"
 .notice "unkItems"
.endif
.ifdef unlockKraidasm
 .include "ASM\FreespaceASM\F_unlockKraid.asm"
 .notice "unlockKraid"
.endif
.ifdef frozenWallJumpasm
 .include "ASM\FreespaceASM\F_frozenWallJump.asm"
 .notice "frozenWallJump"
.endif
.endarea

.org endOFROM ; End of ROM. Adjust as needed for your hacks.
.ifdef fastSaveasm
 .include "ASM\FreespaceASM\F_fastSave.asm"
 .notice "fastSave"
.endif
.ifdef smControlsasm
 .include "ASM\FreespaceASM\F_SMControls.asm"
 .notice "smControls"
.endif
.ifdef fiveByThreeMapasm
 .include "ASM\FreespaceASM\F_fiveByThreeMap.asm"
 .notice "fiveByThreeMap"
.endif
.ifdef beamBurstasm
.ifndef flareasm
 .include "ASM\FreespaceASM\F_beamBurst.asm"
 .notice "beamBurst"
.endif
.endif
.ifdef betterWallJumpasm
 .include "ASM\FreespaceASM\F_betterWallJump.asm"
 .notice "betterWallJump"
.endif
.ifdef mapFixasm
 .include "ASM\FreespaceASM\F_mapFix.asm"
 .notice "mapFix"
.endif
.ifdef newPhysicsasm
 .include "ASM\FreespaceASM\F_newPhysics.asm"
 .notice "newPhysics"
.endif
.ifdef plasmaNerfasm
 .include "ASM\FreespaceASM\F_plasmaNerf.asm"
 .notice "plasmaNerf"
.endif
.ifdef sparkSteeringasm
 .include "ASM\FreespaceASM\F_sparkSteering.asm"
 .notice "sparkSteering"
.endif
.ifdef startingItemsasm
 .include "ASM\FreespaceASM\F_startingItems.asm"
 .notice "startingItems"
.endif
.ifdef hudColorsasm
 .include "ASM\FreespaceASM\F_hudColors.asm"
 .notice "hudColors"
.endif
.ifdef smProjectilesasm
 .include "ASM\FreespaceASM\F_SMProjectiles.asm"
 .notice "smProjectiles"
.endif
.ifdef speedDamageasm
 .include "ASM\FreespaceASM\F_speedDamage.asm"
 .notice "speedDamage"
.endif
.ifdef lowHealthasm
 .include "ASM\FreespaceASM\F_lowHealth.asm"
 .notice "lowHealth"
.endif
.ifdef flareasm
 .include "ASM\FreespaceASM\F_flare.asm"
.endif
.ifdef flareasm
.ifndef beamBurstasm
.notice "flare"
.endif
.endif
.ifdef tractorBeamasm
 .include "ASM\FreespaceASM\F_tractorBeam.asm"
 .notice "Tractor beam"
.endif
.notice "Freespace Loaded."