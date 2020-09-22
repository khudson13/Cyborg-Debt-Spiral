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

talking_to = instance_nearest(Obj_Player.x,Obj_Player.y,Obj_NPC).NPC_name;

// Dialogue options array
dialogue_options = instance_nearest(Obj_Player.x,Obj_Player.y,Obj_NPC).dialogue_options +
	instance_nearest(x,y,Obj_Player).evidence;

options_count = instance_nearest(Obj_Player.x,Obj_Player.y,Obj_NPC).options_count;