# Zero Mission Arbitrarily Compilable Community Pack
A modular codebase for your next metroid zero mission hack.

# Directions For Use
- Download and extract ZMHT.
- Get [armips](https://github.com/Kingcom/armips/releases) and place it in the extracted folder.
- Put a vanilla MZM (U) rom in the extracted folder and rename it to [zm.gba].  
- Drag [zmht.asm] over armips.exe and armips should spit out a file named [output.gba].
- To disable an ASM patch, open zmht.asm in a text editor and add a semicolon (;) in front of lines of patches you do not want to have applied. Then, re-run armips. It will overwrite the previous output.gba file.

# To Add ASM To ZMHT
- Copy the file into `ASM\`.
- Rename the ASM to something specific to its function, if it's not been already. (i.e. `flashyDoors.asm`)
- Open `zmht.asm` and reference your new file with a .include (i.e. `.include "ASM\flashyDoors.asm"`) Keep in mind it is CaSe SeNsItIvE. For best results, create this new .include just below line 9 (`; ASM`)
- Go back to your new file and remove the top and bottom ends of the ASM (`.open`, `.gba`, `.close`)
- Check `Options\Labels.asm`. Compare the labels (`.define blahblah, 0x0F008A4`) to the ones in your new code. if it has labels that don't already exist in Labels.asm (search by address NOT NAME), add them. If the labels already DO exist but go under a different name, rename the labels in your new asm.
- Determine what freespace the code uses. Is it: 

`.org 0x8043DF0 ; Unused Crocomire AI`, 

`.org 0x8304054 ; Croco GFX, unused`, 

`.org 0x8760D38 ; end of ROM` ?

More often than not, ASM that uses End of ROM freespace will use `.org labelname` referencing a label to an address at the top of the file: `.definelabel endOFROM,	0x8A00000`  

- If no freespace is used, you're done. However,

# If The New ASM Uses Freespace
- Create a label with a specific name (just text followed by a colon ex: `flashyDoorsAsm:`) at the top of the asm. We will use this later.
- Rename any hijacks to have names specific to the patch, in order to prevent unnecessary conflicts. (For example, Instead of `ldr r15,=Hijack1`, use `ldr r15,=flashyDoorsHijack1`).
- Take the freespace code and stick it in a new file, save it as a new file in `FreespaceASM\`. (Make sure the filename is distinct, for that I use `F_` in front i.e. `F_flashyDoors.asm`)
- Open `Options\Freespace.asm`, look at how it's done should be pretty self explanatory. go to the right spot in the file and then use an ifdef with that definition you made before. also add a notice, makes it easier to debug knowing which patches are on or off.

# I Followed These Steps To Add ASM And It Didn't Work?
- It probably won't work, but don't be discouraged, you did it correctly,  you may just need to resolve conflicts.

# Known Issues / Conflicts
Unknown Items and Starting Items (Conflict)

# TODO / Help Wanted
- Have all ASM use end of ROM freespace
- Eliminate patch conflicts

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
