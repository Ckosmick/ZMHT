# Zero Mission Arbitrarily Compilable Community Pack
A modular codebase for your next metroid zero mission hack.

ZMHT v0.3 -- 07/14/2022
=============
Changes:
- Main ASM has been CLEANED UP! Only requiring one comment in the main ASM to toggle stuff on and off.
- Captain Glitch's physics patch has been renamed to newPhysics, from glitchPhysX.
- Biospark's tractor beam ASM has been further improved by Captain Glitch, Quote, and Raygun.
- New physics have been made less slippery.
- Settings.asm, for easier access to labels meant to be changed (i.e. MaxPercent and BigSuit)
- further fixes to raygun's sm controls

New ASM:
- raygun's better wall jumping
- raygun's beam flare damage
- somerando(cauuyjdp)'s 5x3 minimap
- somerando(cauuyjdp)'s speedy doors (can be opened with shinespark)
- 3 block tall doors by yohann, somerando(cauuyjdp) and Cosmic
- jumzhu's walljump on frozen enemies
- raygun's per-weapon HUD digits
- raygun's low energy digits
- kiliwily's no bomb jumping when down is held
- kiliwily's bomb jump with power bombs
- yohann's faster save stations

New Tweaks:
- A lot man just go take a look lol i made sure to describe what they do
- Adjustable frame timers for running, spinjumping
- Showing charge beam muzzle flare during a spin jump
- Ballspark having the same delay before and after as shinespark
- Chozodian stations == Refill stations

ZMHT v0.2 -- 03/29/2020
=============

New ASM:
- raygun's chargeHeal
- raygun's plasmaNerf
- Captain Glitch's new physics
- replaced Capt Glitch's SM Controls with raygun's
- raygun's SM Projectiles
- rewritten version of Capt Glitch's SM item grabbing
- Raygun's Fix for minimap graphics that have transparency

Customization:

Labels.asm
- Choose what determines suit GFX in the unknown items asm

Tweaks.asm
- Gravity heat vulnerability ASM replaced with a tweak
- No sounds after ship lands in intro
- Raygun's more detailed beam damage settings
- Enemies do not experience stun on hardmode
- Walljump with spacejump
- Speedball jumping
- Pseudo Screw Attack damage values
- Faster room transitions

ZMHT v0.5.1 -- 2/9/2020
=============
-	Initial Release

# KNOWN ISSUES
	SM controls: 				Usable, not perfect. When firing upward with L + R, samus will aim at an angle for a moment. Charge beam stops working with power bombs selected.
	Modified SM item grabbing: 	Mostly works, but music does not play in room where you reobtain suit. I haven't figured it out yet.
	Charge beam concentration: 	Samus' palette doesn't animate when her beam is charged, it just stays glowing.

# CREDITS
biospark -- author of MAGE, provided lots of help putting this together. These were his contributions:
		Customizable 4th minimap color
		Enable Unknown Items (+ GFX / Text)
		Enable use of Power Bombs before Bombs
		Fusion style R-shotting
		Item percentage scaling
		Metroid Prime-style tractor beam (Suck in drops with charge beam)
		Mid-air ballsparking
		Removal of chozo statue hint system
		Remove intro closeup of Samus' face
		SM-style ability toggling in the status screen
		Adjustable Starting Room
		Two-Line Text Boxes

Captain Glitch -- Aside from general help with this project, his contributions include:
		Adjustable escape timers
		Better Morphball Rolling
		SM style controls
		SM style item grabbing
		Toggle missile select with R
		gravity suit taking heat damage
		shinespark steering
		speedbooster in morphball
		unlocking of Kraid's doors
		
Cosmic -- bullied biospark and glitch to make this a thing. Also added:
		Modified Capt. Glitch's faster item grabbing ASM to have a faster jingle (still needs work)
		Modified biospark's unknown items ASM so that any suit can have the fully powered gfx
		
JumZhu.Diwa -- Walljumping with space jump tweak

Raygun -- Plasma beam nerf
Super Metroid style projectiles

Metroid_Prime_Stratton, Cosmic, Capt Glitch, raygun -- Decompiled version of Capt Glitch's Charge beam concentration ASM.

Metroid Advance Game Construction (MAGConst) -- The metconst subcommunity dedicated to hacking the GBATroids.

Metroid Construction -- The #1 source for all things hacking metroid!

Metroid: Zero Mission speedrunners -- provided lots of input on what to change in this hack.

# Directions
◘ Put a vanilla MZM (U) rom in the extracted folder and rename it to [zm.gba].  
◘ Drag [zmht.asm] over armips.exe and armips should spit out a file named [output.gba].
◘ To disable an ASM patch, open zmht.asm in a text editor and add a semicolon (;) in front of lines of patches you do not want to have applied. Then, re-run armips. It will overwrite the previous output.gba file.

# Contents
This ASM patch is a combination of:
		Tweaks -- Various hex tweaks. Give them a look!
		BallSpark -- This enables initiating a morph ball shinespark, in midair.
		BetterMorphRoll -- When you are in morph ball form, standing still pauses morph ball's animation.
		GravityHeat -- Even with the gravity suit, Samus will take heat damage without the Varia Suit.
		PBsBeforeBombs -- This lets you use Power Bombs before obtaining Bombs, and prevents a softlock in the status screen for doing so.
		RemoveCloseup -- Samus' Closeup at the beginning of the game is known to mess with graphics in hacks, so this lets hackers disable it with ease.
		itemGrab -- This makes item grabbing more like Super Metroid in that it doesn't take you to the status screen every time.
		itemToggle -- You can toggle abilities on and off with [select] in the status screen, a la super metroid.
		minimapColors -- This is used for animating a fourth minimap color, (in ZM Improvement, the pink heated secret tiles) as well as assigning a slot in the minimap palette for the fourth color.
		noHints -- With this ASM, you will no longer have to worry about unskippable chozo statues. All of the chozo will already be sitting down, usable as recharge stations.
		rShot -- In Fusion, samus could fire a charged beam without interrupting her spin jump by pressing [R]. This ASM brings that functionality back to Zero Mission.
		rToggle -- You can think of this as a lite SM Controls. Instead of having to hold down R to arm missiles or power bombs, the R button toggles them.
		scaleEndPercent -- Allows hackers to scale the item collection percentage at the end of the game to the correct amount, based on what is in each area.
		sparkSteering -- Shinesparking is now steerable with the DPAD, within reason. Vertical sparks steer horizontally, Horizontal sparks steer vertically. Diagonal sparks are also effected.
		speedBall -- Samus can now use the morphball to begin speed boosting.
		startingItems -- This lets hackers Configure the ammo, energy, and abilities you start the game with.
		startingRoom -- This is used for hackers to Configure the area, door and music track you start the game at.
		tractorBeam -- With a fully charged beam you can suck in item drops, a la Metroid Prime.
		twoLineTXT -- This makes every item message box 2 lines tall. It's used for faster item grabbing.
		unkItems -- Samus' suit is now compatible with unknown items, right from the start!

With possibly more to come in the future!