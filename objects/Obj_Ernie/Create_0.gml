NPC_name = "Ernie";

alive = true;

// NPC INVENTORY
inventory_size = 19;
inventory = inventory_create(inventory_size);
slots_filled = 0;

// DIALOGUE STARTING OPTIONS
starting_response = "What's going on?";
dialogue_options = ["Hello"];
options_count = 1;
text_Xscale = 3;

// Dialogue function returns appropriate response to each topic,
// executes relevant actions, and updates topic array in dialogue 
// interface as needed
function dialogue(topic)
{
	switch(topic)
	{
		case "Hello":
			Obj_Dialogue.response = "Hello, I'm Ernie.";
			Obj_Dialogue.response_height = LINE_HEIGHT;
			Obj_Dialogue.response_scale = 1;
			break;
		case "I heard someone was trying to sell a gun":
			Obj_Dialogue.response = @"I remember seeing that guy. He was talking mostly to Baxter and... someone else.
			I forget who. Baxter works the algae refinery.";
			Obj_Dialogue.response_height = LINE_HEIGHT * 2;
			Obj_Dialogue.response_scale = 2;
			Obj_Quest_Tracker.quest_update("Ernie");
			break;
	}
} 