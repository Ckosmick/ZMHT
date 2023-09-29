# Zero Mission Arbitrarily Compilable Community Pack
A modular codebase for your next metroid zero mission hack.

# Directions
- Put a vanilla MZM (U) rom in the extracted folder and rename it to [zm.gba].  
- Drag [zmht.asm] over armips.exe and armips should spit out a file named [output.gba].
- To disable an ASM patch, open zmht.asm in a text editor and add a semicolon (;) in front of lines of patches you do not want to have applied. Then, re-run armips. It will overwrite the previous output.gba file.

# Known Issues
TODO

# Credits
    biospark --
	- Customizable 4th minimap color
	- Enable Unknown Items
	- Power Bombs before Bombs
	- Fusion style R-shotting
	- Item percentage scaling
	- Tractor beam (Suck in drops with charge beam)
	- Mid-air ballsparking
	- Remove intro closeup
	- SM Item Toggling
	- Adjustable Starting Room
	- Two-Line Text Boxes
	
    Captain Glitch --
	- Adjustable escape timers
	- Better Morphball Rolling
	- SM style controls
	- SM style item grabbing
	- Toggle missile select with R
	- gravity suit taking heat damage
	- shinespark steering
	- speedbooster in morphball
	- unlocking of Kraid's doors
			
    Cosmic --
	- Slow in Liquids
	- More Map Station Messages
			
    JumZhu.Diwa -- 
	- Walljumping with space jump tweak
	
    Raygun -- 
	- Plasma beam nerf
	- Super Metroid style projectiles
	- SM Controls
	- Colorful HUD
	- Charge beam flare
	- Many tweaks
	
    Somerando (Cauuyjdp) --
	- Tractor Beam
	- TODO

    Yohann --
	- Tractor Beam
	- TODO

    Kiliwily --
	- TODO
	
    jasinchen --
	- TODO

    Quote58 --
	- Tractor Beam

# Contents
	- Tweaks -- Various hex tweaks. Give them a look!
	- BallSpark -- This enables initiating a morph ball shinespark, in midair.
	- BetterMorphRoll -- When you are in morph ball form, standing still pauses morph ball's animation.
	- GravityHeat -- Even with the gravity suit, Samus will take heat damage without the Varia Suit.
	- PBsBeforeBombs -- This lets you use Power Bombs before obtaining Bombs, and prevents a softlock in the status screen for doing so.
	- RemoveCloseup -- Samus' Closeup at the beginning of the game is known to mess with graphics in hacks, so this lets hackers disable it with ease.
	- itemGrab -- This makes item grabbing more like Super Metroid in that it doesn't take you to the status screen every time.
	- itemToggle -- You can toggle abilities on and off with [select] in the status screen, a la super metroid.
	- minimapColors -- This is used for animating a fourth minimap color, (in ZM Improvement, the pink heated secret tiles) as well as assigning a slot in the minimap palette for the fourth color.
	- noHints -- With this ASM, you will no longer have to worry about unskippable chozo statues. All of the chozo will already be sitting down, usable as recharge stations.
	- rShot -- In Fusion, samus could fire a charged beam without interrupting her spin jump by pressing [R]. This ASM brings that functionality back to Zero Mission.
	- rToggle -- You can think of this as a lite SM Controls. Instead of having to hold down R to arm missiles or power bombs, the R button toggles them.
	- scaleEndPercent -- Allows hackers to scale the item collection percentage at the end of the game to the correct amount, based on what is in each area.
	- sparkSteering -- Shinesparking is now steerable with the DPAD, within reason. Vertical sparks steer horizontally, Horizontal sparks steer vertically. Diagonal sparks are also effected.
	- speedBall -- Samus can now use the morphball to begin speed boosting.
	- startingItems -- This lets hackers Configure the ammo, energy, and abilities you start the game with.
	- startingRoom -- This is used for hackers to Configure the area, door and music track you start the game at.
	- tractorBeam -- With a fully charged beam you can suck in item drops, a la Metroid Prime.
	- twoLineTXT -- This makes every item message box 2 lines tall. It's used for faster item grabbing.
	- unkItems -- Samus' suit is now compatible with unknown items, right from the start!
