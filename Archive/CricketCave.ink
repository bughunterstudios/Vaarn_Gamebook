=== CricketCave ===
{You cause minute avelanches of pebels and dust as you slip up the sand towards the small cave. Peering in the dark entrance you can barely see that the walls only extend a few arm lengths back. {ShootCricket: <- WorryingNoises} {inv ? thermal_goggles: Putting on your thermal goggles, you see nothing warm and living in the cave. However the faint remnants of warmth on the ground indicate a recent visitor.} {inv ? glowstone: You pull out your glowstone and you can see the cave is filled with piles of ancient rags and dried feces. The dim green light lets you | You step into the gloom and your eyes adjust until you can start the make out the piles of ancient rags and dried feces. Your eyes finish adjusting and you} see one of the piles of rags in the center of the cave is actually a dessicated corpse. | You return to the cave. Nothing has moved from it's prior positions. {ShootCricket: <- WorryingNoises}}

+ Approach the corpse.
    -> DessicatedCricketCorpse

+ You've entered a cave of death. Flee towards the archive.
    -> FleeCave

= WorryingNoises
Farther up the arroyo you hear the distant sound of machinery whirring: a worrying new development.<>
    -> DONE

= DessicatedCricketCorpse
As you approach the old corpse {|again} you can see it was certainly human. The flesh and clothes have long rotted away, and the bones are pitted from chewing{| by the grey cricket presumably}. {A|The same} glint of light within the ribcage catches your attention.

+ Reach into the ribcage to see what treasure you find.
    -> CricketCorpseItem

+ Better to leave the dead sleeping.
    -> LeaveCave

= HideFromCricket
Your heart pounds in your ears as you strain to listen against the wind. You wait for couple of minutes.

No more sounds. Nothing stirs except the sand etching it's way into the surrounding rocks.

Perhaps you have nothing to fear?

+ Wait a few more minutes.
    -> WaitFromCricket

+ Go investigate the cave.
    -> CricketCave

+ Continue towards the archive.
    -> MartyrTrees
    
= CricketCorpseItem
{
    -WaitFromCricket or AttackCricket or CricketJumpYou:
    You reach into the ribcage, grave dust rubbing against your arm. Your hand pulls out a flat metalic disk. As you rotate it, the surface shimmers with rainbow light. A hole in the center gives the impression of an iris in a metalic eye. {class ? Scavenger: It must be some kind of ancient data disc. Perhaps it is something from the archive?}

    + Pocket the disk. It could come in handy later.
        -> TakeCorpseDisk

    + It is better to leave the dead with their treasures. Leave for the archive.
        -> LeaveCave
    -else:
    As you reach towards the object you hear a scraping and chittering sound behind you. Quickly you draw your {random_melee()} and turn to face the sound, but you are not quick enough.

    + You feel a sudden heavy weight on your back as some creature jumps onto you.
        -> CricketJumpYou
}

= CricketJumpYou
Arm and {random_melee()} flail as the squeaking object bashes at the backpack on your shoulders. A horrible squeal reverberates as you manage to get a solid stab at the thing on your back. Falling on the ground you see a quick dark shape leap out of the cave leaving only a large twitching cricket leg on the ground.

You check your face and arms. No wounds, only spatterings of insect blood. Your backpack did not fair so well. Bite marks tear through the straps and you find yourself one ration short.
    ~ food -= 1

+ Return to investigate the object in the corpse.
    -> CricketCorpseItem

+ Better to leave this place while you can.
    -> LeaveCave

= WaitFromCricket
You stay completely still in the sand attempting to control your breathing.

After a few more minutes of waiting you spot the source of the sound. A large and fat grey cricket clambers up the side of the arroyo towards the cave. You watch as it stands in the entrance.
+ Keep watching to see what it does.
    The cricket circles the perimeter, and then hops from view away over the edge of the rocky canyon.
    + + Surely it isn't coming back. Go investigate the cave.
    -> CricketCave
    + + You don't wish to get eaten. Continue on towards the archive.
    -> MartyrTrees
+ Flee while it is distracted.
    -> MartyrTrees
+ {class ? Musician and inv ? ritual_lyre} Play music on your lyre to sooth the insect.
    You begin idly plucking at your lyre, attempting to look non-threatening. The cricket turns to look at you, antenae wisping about. Suddenly the cricket flees into the cave.
    + + Obviously this cricket does not enjoy the finer things in life. Continue towards the archive.
        -> MartyrTrees
+ {ranged_weapon} Shoot it with your {random_ranged()} while it stands still.
    -> ShootCricket
+ Charge at it with your {random_melee()} while it is distracted.
    -> AttackCricket

= AttackCricket
You let out an involuntary yell as you begin running up the sand towards the cricket, waving your {random_melee()} in front of you. The cricket, apparently in no mood for a fight, lets out a timmid chirp as it flees and leaps into the darkness of the cave.
    
+ It's better to avoid this fight and save your strength. Head towards the archive.
    -> MartyrTrees

= ShootCricket
The sound of your rifle reverberates through the arroyos as the grey cricket slumps into the sand. Hopefully that was the only one.
+ Perhaps now the cave is safe. Go investigate the cave.
    -> CricketCave
+ Better not risk it. Continue on towards the archive.
    -> MartyrTrees

= TakeCorpseDisk
You bury the disk in your backpack. A spare rag will hopefully protect it's gleaming surface.
~ get(cricket_disk)

+ Head towards the archive.
    -> LeaveCave

= FleeCave
You flee from the cave entrance leaving it's mysteries to some other hapless wanderer. Rocks and pebels slide away from your feet as you slip down the sands.

{
    - WaitFromCricket or AttackCricket or CricketJumpYou:
    + Continue towards the archive.
        -> MartyrTrees
    - else:
    As you work on maintaining your balance, you suddenly hear a harsh squeaking noise behind you. You quickly draw your {random_melee()} and turn to see a fat grey cricket perched in the cave entrance above you. It's threadlike antenae wisp about as your gaze locks.

    + Rush at the beast with your {random_melee()} before it does the same to you.
        -> AttackCricket
        
    + {ranged_weapon} Shoot the beast with your {random_ranged()} before it rushes at you.
        -> ShootCricket

    + No time for a fight. Flee towards the archive.
        -> MartyrTrees
}
    
= LeaveCave
{
    - WaitFromCricket or AttackCricket or CricketJumpYou:
    Rocks and pebels slide away from your feet as you slip down the sands away from the cave.
    + You continue on towards the archive.
        -> MartyrTrees
    - else:
        -> FleeCave
}