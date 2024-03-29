NPC_name = "Barkeep";

alive = true;
hostile = false;

// NPC INVENTORY
inventory_size= 19
inventory = inventory_create(inventory_size);
inventory[0][0] = item.OldBogSweat;
inventory[0][1] = 5;
inventory[1][0] = item.BiscuitWash;
inventory[1][1] = 10;
inventory[2][0] = item.BottledWater;
inventory[2][1] = 20;
slots_filled = 3;

// DIALOGUE STARTING OPTIONS
starting_response = "Heya!";
dialogue_options = ["What's on tap?"];
options_count = 1;
text_Xscale = 5;

// Dialogue function returns appropriate response to each topic,
// executes relevant actions, and updates topic array in dialogue 
// interface as needed
function dialogue(topic)
{
	switch(topic)
	{
		case "What's on tap?":
			global.CALLING_INSTANCE = id;
			instance_create_layer(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]),"UI_Windows",Obj_Inventory_Swap);
			Obj_Inventory_Swap.commerce = true;
			instance_destroy(Obj_Dialogue);
			break;

		case "I heard someone was trying\nto sell a firearm here":
			Obj_Dialogue.response = @"I don't need trouble and I
			don't know anything about
			that. Some weirdo was in here
			chatting up my regulars a few
			days ago. Try asking Einren, 
			right over there.";
			Obj_Dialogue.response_height = LINE_HEIGHT * 6;
			Obj_Dialogue.response_scale = 6;
			Obj_Quest_Tracker.quest_update("Barkeep");
			break;
	}
} 