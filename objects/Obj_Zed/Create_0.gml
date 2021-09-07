NPC_name = "Zed";

alive = false;
hostile = false;

// NPC INVENTORY
inventory_size = 19;
inventory = inventory_create(inventory_size);
slots_filled = 1;
inventory[0][0] = item.Manhole_Key;
inventory[0][1] = 1;

// DIALOGUE STARTING OPTIONS
// This dialogue won't actually run because he's dead.
starting_response = "...";
dialogue_options = ["He's been shot!"];
options_count = 1;
text_Xscale = 3;

// Dialogue function returns appropriate response to each topic,
// executes relevant actions, and updates topic array in dialogue 
// interface as needed
function dialogue(topic)
{
	switch(topic)
	{
		case "He's been shot!":
			Obj_Dialogue.response = @"With the right equipment, a
			forensic examination could
			be performed"; 
			Obj_Dialogue.response_height = LINE_HEIGHT * 3;
			Obj_Dialogue.response_scale = 3;
			break;
	}
} 