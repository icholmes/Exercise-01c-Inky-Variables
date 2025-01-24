/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Variable types: integer, float, boolean
 * Variable assignment
 * Printing variables
 * Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something

Variable Checking:
Equality: "Harmony" == "Harmony"
Not equality: 1 != 2 
Greater: >
Less: <
Greater or equal: >=
Less or equal: <=


*/


VAR person_name = ""
VAR tarot_cards = 0
VAR locations = 0

-> introduction

== introduction ==
September 12, 1986.
Charlotte, North Carolina.
You are part of a wilderness exploration team located near the Appalachians.
You have just received notice of large smoke plumes that can be seen over a remote region on the easternmost ridge of the mountain range. 
They suspect it is the doing of an uncontained fire and they need you to inspect it before any further action is taken.

* [Continue] -> carnival_prelude

== carnival_prelude ==
After a 40-minute drive into the dense, unforgiving and unmarked wood, you arrive on the scene. 
With you is your trusty investigative partner and, incidentally, your best friend.
What's their name?

* [Jason] 
~ person_name = "Jason"
-> carnival_prelude_1

* [Molly]
~ person_name = "Molly"
-> carnival_prelude_1

== carnival_prelude_1 ==
You and {person_name} step out of the car and inspect the surrounding area.
Looking around you, you see the exposed innards of what was once some kind of carnival, seemingly. All of it rendered completely to ash.
Red and white-striped tents with searing holes in them, concessions and game tables completely decimated beyond recognition, toys and prizes scattered about, all blackened. Small fires along the ground still burned. 
No one in sight.

* [Continue] -> character_dialogue

=== character_dialogue ===
"Fuuuuuck," {person_name} whispered.
{person_name == "Jason": He looked out concerningly over the desolate plot. "Some local fair. What a nightmare."}
{person_name == "Jason": His eyes lowered to an unassuming red ball at his feet as he crept forward. It had an indentation on the side, assumedly for someone's nose.}
{person_name == "Jason": "Oh, there better be no creepy clown shit. You know I can't deal with that."}
{person_name == "Molly": She looked out concerningly over the desolate plot. "Some local fair. What a nightmare."}
{person_name == "Molly": Her eyes lowered to an unassuming red ball at her feet as she crept forward. It had an indentation on the side, assumedly for someone's nose.}
{person_name == "Molly": "Oh, there better be no creepy clown shit. You know I can't deal with that."}

* [Continue] -> carnival_entrance

== carnival_entrance ==
{not tarot_card_pickup: {person_name} walks on and begins inspection.}
In front of you is what you assume was the carnival's main tent, based on its collosal size. To your left is some sort of prize booth. You are surprised at how well the booth is suspending itself despite its charred legs.
{not tarot_card_pickup:At your feet is a small, thin, rectangular object that's been scorched on one of its edges. A playing card, of some sort?}
You have {tarot_cards} card(s).
You have inspected {locations} locations.

+ [Inspect the tent] -> tent_inspection
+ [Inspect the stand] -> booth_inspection
* [Pick up card] -> tarot_card_pickup

== tent_inspection ==
You pull back the curtain and enter the tent. The smell of burnt wood is dense in the air, adhering itself to your nostrils.
Stadium-style seating lines the outermost perimeter of the tent. The center of the tent is an encasement made of rudimentary fencing. 
Various obstacles and platforms lay sprawled about within the fencing. Perhaps built for some kind of beast a ringmaster could crack with his whip.
In the center of fencing, built crudely with sticks and twigs, is an effigy of some kind.

+ [Inspect effigy] -> effigy_inspection
+ [Go back] -> carnival_entrance

=== effigy_inspection ===
~ locations = locations + 1
It is a carefully constructed emblem. A circle with an upsidedown cross in the center and various runes scattered about the edges. Looks Pagan.
Whoever built this knows this emblem well.
+ [Go back] -> carnival_entrance

== booth_inspection ==
~ locations = locations + 1
It's a game booth with wooden pop-up panels. One in which you shoot water into a clown's open mouth.
{person_name == "Jason": Jason would hate this shit.| }
{person_name == "Molly": Molly would hate this shit.| }
Some of the clowns' faces, however, had been ruined. The perforations in their wooden grins weren't reminscient of burn marks, though. They were gashes. Deep, bloodied gashes that only an animal could make.
Enscribed on the wooden face of the clown directly next to the inexplicably gashed one was another effigy.

+ [Go back] -> carnival_entrance

== tarot_card_pickup ==
~ tarot_cards = tarot_cards + 1
It is a tarot card. A man draped in a robe holding a wand above his head.
"The Magician." Represents manifestion and achievement.
You slip it into your pocket.

+ [Go back] -> carnival_entrance
