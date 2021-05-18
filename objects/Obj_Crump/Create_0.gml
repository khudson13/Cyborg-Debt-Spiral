NPC_name = "Crump";

alive = true;

// NPC INVENTORY
inventory = inventory_create(19);
slots_filled = 0;

// DIALOGUE STARTING OPTIONS
starting_response = "Do please fuck off.";
dialogue_options = ["You're under arrest!"];
options_count = 1;


function dialogue(topic)
{
	switch(topic)
	{
		case "You're under arrest!":
			Obj_Dialogue.response = "Gosh darn it, you got me!";
			Obj_Dialogue.response_height = Obj_Dialogue.display_height;
			Obj_Dialogue.response_scale = 1;
			Obj_Quest_Tracker.evidence_array[10] = true;
			break;
	}
}

