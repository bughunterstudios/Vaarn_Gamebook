=== CricketCave ===
You cause minute avelanches of pebels and dust as you slip up the sand towards the small cave. Peering in the dark entrance you can barely see that the walls only extend a few arm lengths back. You step into the gloom and your eyes adjust until you can start the make out the piles of ancient rags and dried feces. Your eyes finish adjusting and you see one of the piles of rags in the center of the cave is actually a dessicated corpse.

* Approach the corpse.
    -> DessicatedCricketCorpse

* You've entered a cave of death. Flee towards the archive.
    -> FleeCave

= DessicatedCricketCorpse
As you approach the old corpse you can see it was certainly human. The flesh and clothes have long rotted away, and the bones are pitted from chewing. A glint of light within the ribcage catches your attention.

* Reach into the ribcage to see what treasure you find.
    -> CricketCorpseItem

* Better to leave the dead sleeping.
    -> LeaveCave

= HideFromCricket
Your heart pounds in your ears as you strain to listen against the wind. You wait for couple of minutes.

No more sounds. Nothing stirs except the sand etching it's way into the surrounding rocks.

Perhaps you have nothing to fear?

* Wait a few more minutes.
    -> WaitFromCricket

* Go investigate the cave.
    -> CricketCave

* Continue towards the archive.
    -> MartyrTrees
    
= CricketCorpseItem
{
    -HideFromCricket or AttackCricket:
    You reach into the ribcage, grave dust rubbing against your arm. Your hand pulls out a flat metalic disk. As you rotate it, the surface shimmers with rainbow light. A hole in the center gives the impression of an iris in a metalic eye.

    * Pocket the disk. It could come in handy later.
        -> TakeCorpseDisk

    * It is better to leave the dead with their treasures. Leave for the archive.
        -> LeaveCave
    -else:
    As you reach towards the object you hear a scraping and chittering sound behind you. Quickly you draw your rapier and turn to face the sound, but you are not quick enough.

    * You feel a sudden heavy weight on your back as some creature jumps onto you.
        -> CricketJumpYou
}

= CricketJumpYou
Arm and rapier flail as the squeaking object bashes at the backpack on your shoulders. A horrible squeal reverberates as you manage to get a solid stab at the thing on your back. Falling on the ground you see a quick dark shape leap out of the cave leaving only a large twitching cricket leg on the ground.

You check your face and arms. No wounds, only spatterings of insect blood. Your backpack did not fair so well. Bite marks tear through the straps and you find yourself one ration short.

* Return to investigate the object in the corpse.
    -> CricketCorpseItem

* Better to leave this place while you can.
    -> LeaveCave

= WaitFromCricket
You stay completely still in the sand attempting to control your breathing.

After a few more minutes of waiting you spot the source of the sound. A large and fat grey cricket clambers up the side of the arroyo towards the cave. You watch as it stands in the entrance, circles the perimeter, and then hops from view away over the edge of the rocky canyon.

* Surely it isn't coming back. Go investigate the cave.
    -> CricketCave

* You don't wish to get eaten. Continue on towards the archive.
    -> MartyrTrees

= AttackCricket
You let out an involuntary yell as you begin running up the sand towards the cricket, waving your rapier in front of you. The cricket, apparently in no mood for a fight, lets out a timmid chirp as it flees and leaps into the darkness of the cave.

* It's better to avoid this fight and save your strength. Head towards the archive.
    -> MartyrTrees

= TakeCorpseDisk
You bury the disk in your backpack. A spare rag will hopefully protect it's gleaming surface.

* Head towards the archive.
    -> LeaveCave

= FleeCave
You flee from the cave entrance leaving it's mysteries to some other hapless wanderer. Rocks and pebels slide away from your feet as you slip down the sands.

{
    - WaitFromCricket or AttackCricket:
    * Continue towards the archive.
        -> MartyrTrees
    - else:
    As you work on maintaining your balance, you suddenly hear a harsh squeaking noise behind you. You quickly draw your sword and turn to see a fat grey cricket perched in the cave entrance above you. It's threadlike antenae wisp about as your gaze locks.

    * Rush at the beast before it does the same to you.
        -> AttackCricket

    * No time for a fight. Flee towards the archive.
        -> MartyrTrees
}
    
= LeaveCave
{
    - WaitFromCricket or AttackCricket:
    Rocks and pebels slide away from your feet as you slip down the sands away from the cave.
    * You continue on towards the archive.
        -> MartyrTrees
    - else:
        -> FleeCave
}
    
=== MartyrTrees ===
{
    - CricketCave.FleeCave:
    You run tumbling down the sands away from the cave. With a glance behind, you confirm that nothing is following you. Your pace slows as you approach the martyr trees.
    - CricketCave.LeaveCave:
    You slip down the sands towards the martyr tree grove.
    - else:
    You slip down the sands hurring away from the sounds. With a glance behind, you confirm your safety. Your pace slows as you approach the martyr trees.
}
<> Red and water filled fronds bloom off of ashen stalks all around you. You stare through the trees at a carven eye on the archive's wall as the wind creates small crackling sounds in the dried fronds of the tree stalks. Tearing your gaze from the watching eye, on a bloom of crimson fronds nearby you see a profusion of tiny white lumps.

* Investigate the white shapes on the nearby martyr tree.
    -> ArgentManna

* Continue towards the archive.
    ->ArchiveExterior
    
= ArgentManna
You pull a blood red frond towards your eyes to better see the white objects. The white lumps are piles of miniscule crystalized sugar wafers: argent manna.

* Amongst the piles of sugar you see the microscopic black bodies of Themis aphids[.] sucking at the frond, and emitting droplets of nectar from their rear. On the backs of the aphids you see vague shape of the titan symbol responsible for their name.
-
* Scraping the argent manna from the fronds could provide you with a day of rations[.], but perhaps the archivists intent to harvest it themselves.
-
* The archivists wouldn't mind. Harvest the argent manna.
    -> HarvestManna

* You have enough rations as it is. Continue towards the archive.
    -> ArchiveExterior

= HarvestManna
Using the edge of your rapier, you scrape piles of argent manna into a leather pouch. Many aphids fall as well: they will add vital protein.

Something happens.
    -> END

= ArchiveExterior
    -> END