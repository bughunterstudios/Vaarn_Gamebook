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
{FollowPlaney: You return to the martyr tree grove surrounding the archive. | You slip down the sands towards the martyr tree grove.} As you approach the red trees, and sinister carven eyes of the archive, you hear {CricketCave.WorryingNoises: the | a} whirring machinery sound {CricketCave.WorryingNoises: grow louder} {FollowPlaney: farther up the arroyo | behind you}. {inv ? thermal_goggles: Through your thermal goggles you see past the cold landscape and spy the red outline of some boxy machine.} Whatever it is, it is coming down the arroyos closer to your position.
    
+ Stand your ground with your {ranged_weapon: {random_ranged()} | {random_melee()}} ready.
    You draw your {ranged_weapon: {random_ranged()} | {random_melee()}} and wait: eyes scanning through the trees. From out of the canyon staggers a bizzare box shaped synth on two rusting legs. From between it's legs emerges a heavy gun. Antenae waggle in the air as it stops and aims directly at you.
    + + (shoot_spotted) {ranged_weapon} Shoot it with your {random_ranged()} before the synth has time to react.
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
    + + (charge) Charge towards the synth with your {random_melee()}.
        You run across the sand towards the stumbling synth. You zig-zag between martyr trees to hopefully avoid {shot_the_synth: the plasma rifle | whatever weapon} the synth is equiped with.
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
        You fall to the ground and try to flatten yourself against the sand. Just in time. You hear the sickening crackle of plasma shot as a martyr tree behind you explodes into flames.
        + + + Try and shoot the synth with your {random_ranged()}.
            -> shoot_spotted
        + + + Get up and try to charge at the synth with your {random_melee()}.
            -> charge
        + + + Flee towards the archive.
            -> ArchiveExterior.FleeFromSynth
    + + Flee towards the archive.
        -> ArchiveExterior.FleeFromSynth
+ Hide behind a nearby martyr tree.
    You hide behind a martyr tree that is just wide enough to conceal you. You cautiously watch between the fronds. From out of the canyon staggers a bizzare box shaped synth on two rusting legs. From between it's legs emerges a heavy gun. It's antenae wiggle in the air as it begins circling the perimeter of the grove.
    - - (hide)
    * * (shot_the_synth) {ranged_weapon} Shoot it with your {random_ranged()} before the synth has time to react.
        You aim down the sights of your ornate rifle and shoot at the center of the metal box. You hear a loud ping of metal as your bullet richochets off the stumbling synth.
        Next you hear the ethereal crackle of plasma fire as a martyr tree explodes into flame and char.
        The boxy synth is begining to stumble towards you through the trees.
        -> hide
    * * Charge towards the synth with your {random_melee()}.
        -> charge
    * * (wait) {not shot_the_synth} Keep waiting and watching.
        Slowly the synth stumbles past the martyr trees. It swivels it's box shaped body around searching. It is nearly at your position, but hasn't seemed to notice you.
        -> hide
    * * {wait} Sneak behind the synth and try to tip it over.
        -> KillSynth
    + + Flee towards the archive before it notices you.
        -> ArchiveExterior.FleeFromSynth
+ Flee towards the archive.
    -> ArchiveExterior.FleeFromSynth

= KillSynth
You quietly pad across the sand until you are directly behind the synth. Quickly you lift it's side with all your strength until the heavy box tips over. You grab the desperately wiggling legs and continue tipping the synth until it is upside down.
The legs and gun still move, but the synth has no chance of righting itself.
+ {class ? Scavenger} This synth could have valuable parts to harvest.
    You tear off it's undercarriage and detach the powercell inside. Not many of the ancient components are cleanly detachable, but this powercell could be quite valuable. You fit it inside your backpack. Hopefully it will be worth the weight it adds.
    ~ get(powercell)
    + + Nothing left here. Approach the archive.
        -> ArchiveExterior  
+ Leave it be. Approach the archive.
    -> ArchiveExterior
            
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
Using the side of your {random_melee()}, you scrape piles of argent manna into a leather pouch. Many aphids fall as well: they will add vital protein. As you finish filling the pouch, you see movement out of the corner of your eye. Some colorful shadow slides along the ground just out of sight against the archive wall.
~ food += 1
+ Follow the strange shadow.
    You close up your pouch of argent manna and quickly stow it in your backpack as you pad across the sand towards the last position of the shadow. You catch another glimpse of it sliding away from the grove and towards the top of a short ridge. You see the shadow looks almost human, but there is nothing in sight to cast it. 
    {class ? Poet: Could this be one of the planeyfolk you've read about in poems? | {class ? Musician: Could this be one of the planeyfolk you've heard of in songs? | {class ? Pilgrim: Could this be one of the planeyfolk you've heard of from wanderers and pilgrims?}}}
    - - (planey)
    * * Continue to follow the shadow.
        -> FollowPlaney
    * * Call out to it.
        You yell a "hello" to the shadow, but it continues slipping up the side of the ridge.
        -> planey
    * * {class ? Musician and inv ? ritual_lyre} Play a song about planeyfolk in case the shadow recognizes it.
        //Is the planeyfolk nice? Gives a hint? I don't know.
    + + It could be dangerous. Better to make contact with the archivists.
        -> ArchiveExterior
+ Ignore it. It is time to make contact with the archivists.
    -> ArchiveExterior
    
= FollowPlaney
    -> END