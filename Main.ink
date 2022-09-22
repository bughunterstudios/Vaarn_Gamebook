INCLUDE Archive/CricketCave.ink
INCLUDE Archive/MartyrTrees.ink
INCLUDE Archive/ArchiveExterior.ink
INCLUDE Archive/ArchiveInterior.ink

VAR food = 5
LIST inv = (ancient_rapier), lockpicks, ornate_rifle, glowstone, poetry_book, thermal_goggles, ritual_lyre, tarnished_brigandine, cricket_disk, powercell
LIST melee_weapon = (rapier)
LIST ranged_weapon = rifle
LIST class = Thief, Poet, Warrior, Pilgrim, Scavenger, Musician, Gladiator

-> Start

=== function get(x)
    ~ inv += x
    
=== function lose(x)
    ~ inv -= x

=== function print_inventory()
    {print_inventory_helper(inv, "Nothing but lint and dirt.")}

== function print_list(list, if_empty)
    {LIST_COUNT(list):
    - 2:
        	{LIST_MIN(list)} and {print_list(list - LIST_MIN(list), if_empty)}
    - 1:
        	{list}
    - 0:
			{if_empty}
    - else:
      		{LIST_MIN(list)}, {print_list(list - LIST_MIN(list), if_empty)}
    }

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
        an ancient rapier you found in an Autarch's tomb
    }
    { item ? lockpicks:
        a set of lockpicks
    }
    { item ? ornate_rifle:
        an ornate gilded rifle you won in a bet
    }
    { item ? glowstone:
        a dim green glowstone
    }
    { item ? poetry_book:
        a sunbleached book of poetry
    }
    { item ? thermal_goggles:
        a pair of thermal imaging goggles
    }
    { item ? ritual_lyre:
        a ritual lyre you were gifted by a Faa
    }
    { item ? tarnished_brigandine:
        a tarnished brigandine
    }

=== function random_melee()
    {LIST_RANDOM(melee_weapon)}

=== function random_ranged()
    {LIST_RANDOM(ranged_weapon)} 

=== Start ===
You were born in an ancient nest of chrome and glass: one of the arcologies left behind by past generations.

+ This favoured birth makes you a true-kin[.], untouched by the peculiar genetics of the outside Urth.
+ This cursed home kept you away from the sun and fresh air[.], blissfully unaware of the wonders outside your walls.
-
+ Though you are told your blood line is favoured[.], the tattoos on your face mark you as a servitor. A life of hard labour would have been your fate, had you not fled the old societies to discover your true calling.
- (loop)
* [Now you are a {class}{LIST_COUNT(class) > 0: and} Thief]
    ~ class += Thief
    ~ get(lockpicks)
* [Now you are a {class}{LIST_COUNT(class) > 0: and} Poet]
    ~ class += Poet
    ~ get(poetry_book)
* [Now you are a {class}{LIST_COUNT(class) > 0: and} Warrior]
    ~ class += Warrior
    ~ get(ornate_rifle)
    ~ ranged_weapon += rifle
* [Now you are a {class}{LIST_COUNT(class) > 0: and} Pilgrim]
    ~ class += Pilgrim
    ~ get(glowstone)
* [Now you are a {class}{LIST_COUNT(class) > 0: and} Scavenger]
    ~ class += Scavenger
    ~ get(thermal_goggles)
* [Now you are a {class}{LIST_COUNT(class) > 0: and} Musician]
    ~ class += Musician
    ~ get(ritual_lyre)
* [Now you are a {class}{LIST_COUNT(class) > 0: and} Gladiator]
    ~ class += Gladiator
    ~ get(tarnished_brigandine)
- {
    - loop == 3:
        Now you are a {print_list(class, "nothing")}.
        -> continue
    - else:
        -> loop
}
- (continue) <> The harsh desert sands have been no kinder than your old life treated you, but at least you are free.
-
+ You have begun your journey with[...]: {food} days of dried rations and water, {print_inventory()}.

During your previous journeys you gained the mystic gift of healing hands from a psychoactive fungus.
-
+ [Begin your journey.]
    -> QuestIntro

=== QuestIntro ===
You have been hired as a guide; perhaps a foolish endeavour for someone so unfamiliar with the vast interior desert of Vaarn. Lack of equipment and water drove you to desperate ends.

+ The task sounds hospitable enough[.]: deliver an archivist past the crystal mesas to an ancient wreckage. The Felicitous Society Of Generous Vendors provided the task, your directions, and the equipment currently residing on your back. Perhaps the archivists already paid the trade cartel? You didn't bother to ask questions.
-
+ At this time[...], promise of more water payment is all that keeps you walking.
-
+ After a day of walking, you have nearly arrived at the archive.
    -> JourneyStart
    
=== JourneyStart ===
Blue sand whispers beneath your tired feet as you arrive at your destination. You thank whatever gods are watching that you managed to find it among these snaking arroyos and sinister caves. The bulbous red sun is close to setting, leaving your current path in shade.

+ Amongst a large martyr tree grove sits the archive[.]: a squat hexagonal complex with large hideous eyes carved in relief. One eye seems to watch your approach coldly. An uninviting exterior, but perhaps the inhabitants are charming.
-
+ While regarding the archive you hear the sound of slipping rocks.[] A light chittering sound fades from range as you swivel with alarm. All that catches your eye is a sliding rock falling from a dark cave up the slope to your right.
-
+ Climb up to the cave to investigate.
    -> CricketCave

+ Hurry on towards the archive.
    -> MartyrTrees

+ Hide and try to spot the source of the noise.
    -> CricketCave.HideFromCricket