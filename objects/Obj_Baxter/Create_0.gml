NPC_name = "Baxter";

alive = true;

// NPC INVENTORY 
inventory_size = 19;
inventory = inventory_create(inventory_size);
slots_filled = 0;

// DIALOGUE STARTING OPTIONS
starting_response = "Can I help you?";
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
			Obj_Dialogue.response = "Hello, I'm Baxter."; 
			Obj_Dialogue.response_height = LINE_HEIGHT;
			Obj_Dialogue.response_scale = 1;
			break;
		case "Heard someone tried to sell you a gun":
			Obj_Dialogue.response = @"Yeah, but I didn't hang around. Don't need that kind of trouble.
			I think the name was Albert. When I left, Chunk was still listening. 
			Lives over in D-2.3.";
			Obj_Dialogue.response_height = LINE_HEIGHT * 3;
			Obj_Dialogue.response_scale = 3;
			Obj_Quest_Tracker.quest_update("Baxter");
			break;
		case "D-2.3 is locked.":
			Obj_Dialogue.response = "Chunk may be in trouble. I have the spare key. Here, you can use it.";
			Obj_Dialogue.response_height = LINE_HEIGHT;
			Obj_Dialogue.response_scale = 1;
			inventory_Add(Obj_Player, Obj_Player.inventory, Obj_Player.inventory_size, item.ChunkKey);
			break;
	}
} 

