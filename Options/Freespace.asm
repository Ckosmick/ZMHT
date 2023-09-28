;
; FREESPACE ASM
;

.org 0x8043DF0 ; Unused Crocomire AI
.area 0x2EC
.ifdef scaleEndPercentasm
 .include "FreespaceASM\F_scaleEndPercent.asm"
 .notice "scaleEndPercent"
.endif
.ifdef powerBombJumpasm
 .include "FreespaceASM\F_powerBombJump.asm"
 .notice "powerBombJump"
.endif
.ifdef noBombJumpDownasm
 .include "FreespaceASM\F_noBombJumpDown.asm"
 .notice "noBombJumpDown"
.endif

.ifdef chargeHealasm
 .include "FreespaceASM\F_chargeHeal.asm"
 .notice "chargeHeal"
.endif


.ifdef itemGrabasm
 .include "FreespaceASM\F_itemGrab.asm"
 .notice "itemGrab"
.endif

.endarea

; ------------------

.org 0x8304054 ; Croco GFX, unused
.area 0x3094
.ifdef smProjectilesasm
ImNotAWrapper:
	ldr	r0,=AddSpeeds
	mov	r15,r0
.pool
.endif
.ifdef ballSparkasm
 .include "FreespaceASM\F_ballSpark.asm"
 .notice "ballSpark"
.endif
.ifdef betterRollasm
 .include "FreespaceASM\F_betterRoll.asm"
 .notice "betterRoll"
.endif
.ifdef rShotasm
 .include "FreespaceASM\F_rShot.asm"
 .notice "rShot"
.endif
.ifdef speedBallasm
 .include "FreespaceASM\F_speedBall.asm"
 .notice "speedBall"
.endif
.ifdef tractorBeamasm
DrawPickupWrapper:
	ldr	r0,=DrawPickup
	mov	r15,r0
.pool
.endif
.ifdef unkItemsasm
 .include "FreespaceASM\F_unkItems.asm"
 .notice "unkItems"
.endif
.ifdef unlockKraidasm
 .include "FreespaceASM\F_unlockKraid.asm"
 .notice "unlockKraid"
.endif
.ifdef frozenWallJumpasm
 .include "FreespaceASM\F_frozenWallJump.asm"
 .notice "frozenWallJump"
.endif
.endarea

; ------------------

.org endOFROM ; End of ROM. Adjust as needed for your hacks.
.ifdef fastSaveasm
 .include "FreespaceASM\F_fastSave.asm"
 .notice "fastSave"
.endif
.ifdef smControlsasm
 .include "FreespaceASM\F_SMControls.asm"
 .notice "smControls"
.endif
.ifdef fiveByThreeMapasm
 .include "FreespaceASM\F_fiveByThreeMap.asm"
 .notice "fiveByThreeMap"
.endif
.ifdef beamBurstasm
.ifndef flareasm
 .include "FreespaceASM\F_beamBurst.asm"
 .notice "beamBurst"
.endif
.endif
.ifdef betterWallJumpasm
 .include "FreespaceASM\F_betterWallJump.asm"
 .notice "betterWallJump"
.endif
.ifdef mapFixasm
 .include "FreespaceASM\F_mapFix.asm"
 .notice "mapFix"
.endif
.ifdef newPhysicsasm
 .include "FreespaceASM\F_newPhysics.asm"
 .notice "newPhysics"
.endif
.ifdef plasmaNerfasm
 .include "FreespaceASM\F_plasmaNerf.asm"
 .notice "plasmaNerf"
.endif
.ifdef sparkSteeringasm
 .include "FreespaceASM\F_sparkSteering.asm"
 .notice "sparkSteering"
.endif
.ifdef startingItemsasm
 .include "FreespaceASM\F_startingItems.asm"
 .notice "startingItems"
.endif
.ifdef hudColorsasm
 .include "FreespaceASM\F_hudColors.asm"
 .notice "hudColors"
.endif
.ifdef smProjectilesasm
 .include "FreespaceASM\F_SMProjectiles.asm"
 .notice "smProjectiles"
.endif
.ifdef speedDamageasm
 .include "FreespaceASM\F_speedDamage.asm"
 .notice "speedDamage"
.endif
.ifdef lowHealthasm
 .include "FreespaceASM\F_lowHealth.asm"
 .notice "lowHealth"
.endif
.ifdef flareasm
 .include "FreespaceASM\F_flare.asm"
.endif
.ifdef flareasm
.ifndef beamBurstasm
.notice "flare"
.endif
.endif
.ifdef tractorBeamasm
 .include "FreespaceASM\F_tractorBeam.asm"
 .notice "Tractor beam"
.endif
.ifdef breakBlocksasm
 .include "FreespaceASM\F_breakBlocks.asm"
 .notice "breakBlocks"
.endif
.notice "Freespace Loaded."