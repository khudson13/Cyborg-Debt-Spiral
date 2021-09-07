NPC_name = "Gate Guard";

alive = true;
hostile = false;

// SET INVENTORY
inventory = inventory_create(19);
slots_filled = 0;

// DIALOGUE STARTING OPTIONS
starting_response = "Whadaya want?";
dialogue_options = ["Hello","Who are you?","Open the gate!"];
options_count = 3;
text_Xscale = 3;

// Dialogue function returns appropriate response to each topic,
// executes relevant actions, and updates topic array in dialogue 
// interface as needed
function dialogue(topic)
{
	switch(topic)
	{
		case "Hello":
			Obj_Dialogue.response = "Hello, yourself."; 
			Obj_Dialogue.response_height = LINE_HEIGHT;
			Obj_Dialogue.response_scale = 1;
			break;
		case "Who are you?":
			Obj_Dialogue.response = "I'm the gate guard."; 
			Obj_Dialogue.response_height = LINE_HEIGHT;
			Obj_Dialogue.response_scale = 1;
			break;
		case "Open the gate!":
			if (has_item(item.Warrant,Obj_Player.inventory,Obj_Player.slots_filled) == true)
			{
				Obj_Dialogue.response = "You may pass.";
				Obj_Dialogue.response_height = LINE_HEIGHT;
				Obj_Dialogue.response_scale = 1;
				instance_nearest(x,y,Obj_Sector_Gate).locked = false;
			}
			else
			{
				Obj_Dialogue.response = "Entry refused.";
				Obj_Dialogue.response_height = LINE_HEIGHT;
				Obj_Dialogue.response_scale = 1;
			}
			break;
	}
}