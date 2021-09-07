NPC_name = "Crump";

alive = true;
hostile = false;

// NPC INVENTORY
inventory = inventory_create(19);
slots_filled = 0;

// DIALOGUE STARTING OPTIONS
starting_response = "No! Wait! I'm still reloading!";
dialogue_options = ["You're under arrest!", "Give me that gun!"];
options_count = 2;
text_Xscale = 6;

function dialogue(topic)
{
	switch(topic)
	{
		case "You're under arrest!":
			Obj_Dialogue.response = "Gosh darn it, you got me!";
			Obj_Dialogue.response_height = LINE_HEIGHT;
			Obj_Dialogue.response_scale = 1;
			Obj_Quest_Tracker.evidence_array[10] = true;
			break;
			
		case "Give me that gun!":
			Obj_Dialogue.response = "Fine, you win.";
			Obj_Dialogue.response_scale = 1;
			options_count = 1;
			inventory_Add(Obj_Player, Obj_Player.inventory, Obj_Player.inventory_size, item.Gun);
			break;
	}
}

