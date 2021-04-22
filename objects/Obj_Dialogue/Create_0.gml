/// @description Insert description here
// You can write your code in this editor

/*
Here we'll construct an array of dialogue options copied from the NPC's inherent dialogue options
and any extras added by the player character, those mostly being based in cases being investigated
and found evidence.

NPC's who provide evidence can be groomed into informants, who have a higher chance of having evidence
in the future. Some NPC's, at random, may have special connections which make them useful for further
interaction as contacts.
*/

display_height = 35; // Height of character display

// dialogue options
selected_index = 0;
access = -1;

if (instance_exists(Obj_Interact))
{
	talking_ID = Obj_Interact.npc[| Obj_Interact.selected_index - Obj_Interact.itemCount]
}
else
{
	talking_ID = instance_nearest(Obj_Player.x,Obj_Player.y,Obj_NPC);
}
talking_to = talking_ID.NPC_name;

// Dialogue options array
dialogue_options = talking_ID.dialogue_options;
	//+ instance_nearest(x,y,Obj_Player).evidence;
	
response = "";

options_count = talking_ID.options_count;