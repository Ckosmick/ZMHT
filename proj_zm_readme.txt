+===============+
| SOME WARNINGS |
+===============+
- This hack is for the United States (U) Metroid Zero Mission ROM. MD5: EBBCE58109988B6DA61EBB06C7A432D5
- You can check your ROM hash using HashTab on Windows or md5sum on Linux
- ONLY USE ONE PATCH ON YOUR ROM
- This hack is not compatible with other hacks, including the MZM Randomizer. 
- This hack is not compatible with save files from vanilla MZM.
|
- Project ZM DOES NOT WORK on VBA or VBA-M. Those emulators are inaccurate.
		NOTE: This hack was tested on real hardware, 3DS VC Inject, BizHawk, mGBA, and no$gba.

+================================+
| Feedback? Questions? Problems? |
+================================+
Discord Server: https://discord.gg/ZNWFKjaefr
Suggestions Box: https://forms.gle/Qnyo4doQBfhznXRh9
Bug/Issue Form: https://forms.gle/9tfSuQetsA2CjyjV9

+==========+
| CONTENTS |
+==========+
Standard Patch (Proj_ZM_083.ips)
---
The intended experience for new players.
- In the original game and this patch, some abilities are unknown items -- They cannot be used right away.
- Chozo statues drop hints to keep you on track.

Unknown Items Enabled (Proj_ZM_083_Unk_Enabled.ips)
---
For experienced Zero Mission players/speedrunners ONLY. 
If this is your first time, DO NOT USE THIS PATCH. YOU WILL GET LOST! YOU HAVE BEEN WARNED.
- Samus' suit can use unknown items.
- Chozo hint statues are removed.
- Item messages can be dismissed faster.
- Instant door transitions.
- Plasma beam deals less damage since it is obtained earlier in the game.

+==============+
| INSTRUCTIONS |
+==============+
1. Download Floating IPS (FLIPS). https://www.romhacking.net/utilities/1040/
2. Open FLIPS and select Apply Patch.
3. REFER TO CONTENTS SECTION ABOVE. Select Either Proj_ZM_081.ips or Proj_ZM_081_Unk_Enabled.ips
4. Select your UNMODIFIED United States (U) Metroid Zero Mission ROM. MD5: EBBCE58109988B6DA61EBB06C7A432D5 (Use HashTab on Windows or md5sum on Linux to check your ROM hash)
5. Save the patched ROM somewhere. It is named after the patch by default.
6. Enjoy!

+===================+
| AESTHETIC CHANGES |
+===================+
- Custom title screen.
- Compact HUD with three separate colors for selected weapons and red digits at low energy.
- Compact slightly modified font from European Zero Mission ROM.
- Maroon outlines and navy blue filler recolored on a per-object, per-tileset basis.
- Slight modification to bomb block and screw attack block graphics.
- Doors are more obviously unlocked with a blue to gray animation instead of white to gray.
- A whole slew of fixed tiling errors.
- The blocky corners of Deorem's eye socket have been rounded.
- Screw attack particles have a purple outline.
- Unique breakable blocks in the mothership. 
		NOTE: inspired by breakable blocks in Fusion, with notches in each corner.
- Custom detailed map tiles inspired by Super Metroid Redesign: Axeil Edition. 
		NOTE: For more screen real estate.
- Power bombs are yellow.
		NOTE: This was done to color code PBs with yellow doors like missiles and supers.

+==================+
| GAMEPLAY CHANGES |
+==================+
- SM controls: Choose between GBA and SNES controls in the options menu.
- Walljump with spacejump: You can now walljump when you have spacejump or space + screw attack.
- Fusion style R-shot: Fire a charged shot without interrupting a spinjump by pressing R with default controls
- Faster shinespark recovery: When samus sparks into something, she recovers faster.
- Suitless spacejump and bombjump in liquids: You can spacejump and bombjump in liquids without the gravity suit.
- Mid-air ballsparking.
- SM style item grabbing.
- SM style equipment toggling.
- Steer shinesparking with D-Pad.
- Initiate speed booster in Morph ball.
- Suck in drops with charge beam.
- Bomb jump with power bombs.
- Suit rebalance: Gravity Suit on its own is not heat or weak acid resistant. 
		NOTE: Both Varia and Gravity Suits are required for lava resistance. 
		This change was made to encourage grabbing both suits.

+=================+
| PHYSICS CHANGES |
+=================+
- Midair morph does not stop you.
- Continue charging speedboost when jumping/falling.
- Springball no longer stops ballboosting.
- Respin out of shinespark.
- Momentum is preserved.

+===============+
| WORLD CHANGES |
+===============+
- You begin the game next to the ship.
- Low% is now as low as 4%. (Morph, bombs, Ice beam, missile tank)
- All unknown items and power grip can be skipped.
- A bunch of rooms were changed to make low% without power grip possible.
- Perfect stealth is humanly achievable.
- There is a new way to skip zipline activation in Kraid.
- The black space pirates are now weak to any beam. Plasma beam is not required.
- Norfair is accessible before bombs.
- An optional map room was added to Tourian.
- Tourian has more rinkas in hard mode, and the mother brain room has more spots to use power grip.
- Power bombs can be obtained early in two locations. 
		NOTE: This does not allow you to beat the game early; you must still follow the original sequence of events.
- Hard mode is always available. 
		NOTE: After beating the game you can Press Up, Left, Right, Down for Time Attack mode.

+===============+
| ENEMY CHANGES |
+===============+
- Enemy drops have been significantly improved. 
- More enemies vulnerable to power bombs.
- Enemies are no longer stunned in Hard mode. This replaces Easy mode's longer enemy stun.
- The Kraid Gadora fires eye blasts like the Ridley Gadora.
- Kraid fingernails use Hard mode velocity on Easy and Normal.
- The missile block in Kraid's room was removed to add challenge to the fight.
- Mecha Ridley is harder if you have >30% items.
- Ridley's aggression threshold is dropped from >200 damage (>10 missiles or 2 charge shots) to >40 damage (>2 missiles).
- The Ridley fight begins as soon as you enter his room. 
		NOTE: In vanilla and standard patch, gravity suit is unusable for this fight, as it is an unknown item. For unknown items enabled, this makes Gravity Suit a reward.

+==============+
| KNOWN ISSUES |
+==============+
- [Vanilla] Escaping the Power Grip gauntlet too quickly results in the tower never extending.
- [Vanilla] Every certain number of frames, you cannot exit the zipline.
- [Unknown Items] Broken Kraid/Ridley elevator statues temporarily delete certain blocks.
- Occasionally the brinstar theme will play at the start of the Kraid cutscene.
- Miniboss theme will sometimes keep playing after grabbing charge beam.
- Messed up sounds grabbing Crateria early super missiles.
- Stealth segment does not always have music.
- With SM controls selected, demos are messed up.
- Kraid Gadora eye blast graphics clip over the eye.

+=========+
| CREDITS |
+=========+
biospark -- author of Metroid Advance Game Editor (MAGE) and the following ASM:
		4th minimap color
		Enable Unknown Items (+ GFX / Text)
		Fusion style R-shotting
		Metroid Prime-style tractor beam (Suck in drops with charge beam)
		Mid-air ballsparking
		SM-style ability toggling in the status screen
		Two-Line Text Boxes
		Instant door transitions

Captain Glitch -- Aside from general help with this project, his contributions include:
		SM style item grabbing
		Shinespark steering
		Speedbooster in morphball
		Unlocking of Kraid's doors
		New physics
		Respin out of shinespark
	
Cosmic -- Head of the project. Added:
		Changed world design
		Fixed tiling errors
		Custom graphics
		Custom text
		Replaced navy blue tileset filler
		Early power bombs
		Norfair before bombs
	   
JumZhu.Diwa -- Walljump with space jump

kiliwily -- Shinespark in 2 block tall passages
		Screw attack and speed booster reveal hidden tanks
		Screw attack breaks bomb chain blocks
		Imago softlock fix
		Power bomb jumping

raygun -- SNES Controls
		3 Weapon highlight colors
		Beam Burst (With SNES Controls, Fire charged shots with B while PBs selected)
		Red digits at low energy
		Fast door transitions

somerando(cauuyjdp) -- Bombjump in liquids without gravity suit

Nintendo -- Metroid: Zero Mission 

Metroid Construction -- The #1 source for all things hacking metroid!
		Website: https://metroidconstruction.com/
		Discord: https://discord.gg/xDwaaqa

Metroid Advance Game Construction (MAGConst) -- The metconst subcommunity dedicated to hacking the GBATroids.
		Discord: https://discord.gg/WtekHKb
	  
Metroid: Zero Mission speedrunners -- provided lots of input on what to change in this hack.
		Website: https://www.speedrun.com/mzm
		Discord: https://discordapp.com/invite/0ePDppd9djuPisZp