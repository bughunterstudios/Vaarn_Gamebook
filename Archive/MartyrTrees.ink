=== MartyrTrees ===
{
    - CricketCave.ShootCricket:
    -> SinisterWhirring
    -else:
    {
        - CricketCave.LeaveCave or CricketCave.WaitFromCricket:
        You slip down the sands towards the martyr tree grove.
        - CricketCave.FleeCave:
        You run tumbling down the sands away from the cave. With a glance behind, you confirm that nothing is following you. Your pace slows as you approach the martyr trees.
        - else:
        You slip down the sands hurring away from the sounds. With a glance behind, you confirm your safety. Your pace slows as you approach the martyr trees.
    }
    <> Red and water filled fronds bloom off of ashen stalks all around you. You stare through the trees at a carven eye on the archive's wall as the wind creates small crackling sounds in the dried fronds of the tree stalks. Tearing your gaze from the watching eye, on a bloom of crimson fronds nearby you see a profusion of tiny white lumps.
    
    + Investigate the white shapes on the nearby martyr tree.
        -> ArgentManna
    
    + Continue towards the archive.
        ->ArchiveExterior
}

= SinisterWhirring
You slip down the sands towards the martyr tree grove. As you approach the red trees, and sinister carven eyes, you hear {CricketCave.WorryingNoises: the | a} whirring machinery sound {CricketCave.WorryingNoises: grow louder} behind you. {inv ? thermal_goggles: You put on your thermal goggles. Past the cold landscape you can see the red outline of some boxy machine.} Whatever it is, it is coming down the arroyos closer to your position.
    
+ Stand your ground with your {ranged_weapon: {random_ranged()} | {random_melee()}} ready.
    You draw your {ranged_weapon: {random_ranged()} | {random_melee()}} and wait: eyes scanning through the trees. From out of the canyon staggers a bizzare box shaped synth on two rusting legs. From between it's legs emerges a heavy gun. Antenae waggle in the air as it stops and aims directly at you.
    + + {ranged_weapon} Shoot it with your {random_ranged()} before the synth has time to react.
        You aim down the sights of your ornate rifle and shoot at the center of the metal box. You hear a loud ping of metal as your bullet richochets off the stumbling synth.
        {
            - inv ? tarnished_brigandine:
                Next you hear the ethereal crackle of plasma fire ring across your brigandine as you fall to the ground.
                ~ lose(tarnished_brigandine)
                + Everything fades to black.
                    -> ArchiveInterior.AwakeInArchive
            - else:
                Next you hear the ethereal crackle of plasma fire as the synth blasts a hole through your chest.
                You are dead.
                -> END
        }
    + + Charge towards the synth with your {random_melee()}.
        You run across the sand towards the stumbling synth. You zig-zag between martyr trees to hopefully avoid whatever weapon the synth is equiped with.
        Your daring run is cut short as a crackling plasma shot blasts a hole through your stomach.
        {
            - inv ? tarnished_brigandine:
                Your daring run is cut short as a crackling plasma shot rings across your brigandine. You fall head first into the sand.
                ~ lose(tarnished_brigandine)
                + Everything fades to black.
                    -> ArchiveInterior.AwakeInArchive
            - else:
                Your daring run is cut short as a crackling plasma shot blasts a hole through your stomach.
                You are dead.
                -> END
        }
    + + Drop to the ground.
    + + Flee towards the archive.
+ Hide behind a nearby martyr tree.
+ Flee towards the archive.
    
= ArgentManna
You pull a blood red frond towards your eyes to better see the white objects. The white lumps are piles of miniscule crystalized sugar wafers: argent manna.

+ Amongst the piles of sugar you see the microscopic black bodies of Themis aphids[.] sucking at the frond, and emitting droplets of nectar from their rear. The nectar will soon crystalize into more manna. On the backs of the aphids you see the vague shape of the titan symbol responsible for their name.
-
+ Scraping the argent manna from the fronds could provide you with a day of rations[.], but perhaps the archivists intent to harvest it themselves.
-
+ The archivists wouldn't mind. Harvest the argent manna.
    -> HarvestManna

+ You have enough rations as it is. Continue towards the archive.
    -> ArchiveExterior

= HarvestManna
Using the side of your {random_melee()}, you scrape piles of argent manna into a leather pouch. Many aphids fall as well: they will add vital protein.
    ~ food += 1

Something happens.
    -> END