INCLUDE ArchiveExterior.ink
VAR food = 10
LIST inv = ancient_rapier, lockpick, ornate_rifle, glowstone, ritual_spear, drug
VAR weapon = "rapier"

    -> Start

=== function get(x)
    ~ inv += x

=== function print_inventory()
    {print_inventory_helper(inv, "Nothing but lint and dirt.")}

=== function print_inventory_helper(list, if_empty)
    {LIST_COUNT(list):
    - 2:
        	{pretty_print_item(LIST_MIN(list))} and {print_inventory_helper(list - LIST_MIN(list), if_empty)}
    - 1:
        	{pretty_print_item(list)}
    - 0:
			{if_empty}
    - else:
      		{pretty_print_item(LIST_MIN(list))}, {print_inventory_helper(list - LIST_MIN(list), if_empty)}
    }
    
=== function pretty_print_item(item)
    { item ? ancient_rapier:
        an ancient rapier you found in an autarch's tomb
    }
    { item ? lockpick:
        a set of lockpicks
    }
    { item ? ornate_rifle:
        an ornate gilded rifle you won in a bet
    }
    { item ? glowstone:
        a dim green glowstone
    }
    { item ? ritual_spear:
        a ritual spear you were gifted by the Faa
    }
    { item ? drug:
        some psychedelic drugs with unknown properties
    }
    

=== Start ===
You were born in an ancient nest of chrome and glass: one of the arcologies left behind by past generations.

* This favoured birth makes you a true-kin[.], untouched by the peculiar genetics of the outside Urth.
* This cursed home kept you away from the sun and fresh air[.], blissfully unaware of the wonders outside your walls.
-
* Though you are told your blood line is favoured[.], the tattoos on your face mark you as a servitor. A life of hard labour would have been your fate, had you not fled the old societies to discover your true calling.
-
* Now you are a wanderer, vagabond, and ne're-do-well.
~ get(ancient_rapier)
~ weapon = "rapier"
~ get(lockpick)
* Now you are a warrior, gladiator, and sellsword.
~ get(ornate_rifle)
~ weapon = "rifle"
~ get(glowstone)
* Now you are a pilgrim, scavenger, and poet.
~ get(ritual_spear)
~ weapon = "spear"
~ get(drug)
-<> The harsh desert sands have been no kinder than your old life treated you, but at least you are free.
-
* You have begun your journey with[...]: {food} days of dried rations and water, {print_inventory()}.

During your previous journeys you gained the mystic gift of healing hands.
-
* [Begin your journey.]
    -> QuestIntro

=== QuestIntro ===
You have been hired as a guide; perhaps a foolish endeavour for someone so unfamiliar with the vast interior desert of Vaarn. Lack of equipment and water drove you to desperate ends.

* The task sounds hospitable enough[.]: deliver an archivist past the crystal mesas to an ancient wreckage. The Felicitous Society Of Generous Vendors provided the task, your directions, and the equipment currently residing on your back. Perhaps the archivists already paid the trade cartel? You didn't bother to ask questions.
-
* At this time[...], promise of more water payment is all that keeps you walking.
-
* After a day of walking, you have nearly arrived at the archive.
    -> JourneyStart
    
=== JourneyStart ===
Blue sand whispers beneath your tired feet as you arrive at your destination. You thank whatever gods are watching that you managed to find it among these snaking arroyos and sinister caves.

* Amongst a large martyr tree grove sits the archive[.]: a squat hexagonal complex with large hideous eyes carved in relief. One eye seems to watch your approach coldly. An uninviting exterior, but perhaps the inhabitants are charming.
-
* While regarding the archive you hear the sound of slipping rocks.[] A light chittering sound fades from range as you swivel with alarm. All that catches your eye is a sliding rock falling from a dark cave up the slope to your right.
-
* Climb up to the cave to investigate.
    -> CricketCave

* Hurry on towards the archive.
    -> MartyrTrees

* Hide and try to spot the source of the noise.
    -> CricketCave.HideFromCricket