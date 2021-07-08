display_height = 12;  // Height of character display
response_height = LINE_HEIGHT; // Height of current response text
response_scale = 1;   // Enlarge sprite based on response size
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
// check for non-interactive npc
if (talking_to == "Citizen")
{
	talking_ID.one_Liner();
	instance_destroy(Obj_Dialogue);
}
else
{
	// Dialogue options vars
	dialogue_options = talking_ID.dialogue_options;
	response = talking_ID.starting_response;
	options_count = talking_ID.options_count;

	image_xscale = talking_ID.text_Xscale;
}