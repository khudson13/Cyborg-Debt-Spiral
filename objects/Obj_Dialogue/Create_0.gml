
display_height = 35;  // Height of character display
response_height = 35; // Height of current response text
response_scale = 0;   // Enlarge sprite based on response size
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