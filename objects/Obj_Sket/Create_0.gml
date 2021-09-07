NPC_name = "Sket";

alive = true;
hostile = false;

// NPC INVENTORY
inventory = inventory_create(19);
slots_filled = 0;

// DIALOGUE STARTING OPTIONS
starting_response = "I have a mighty thirst!";
dialogue_options = ["You're my informant?"];
options_count = 1;
text_Xscale = 5; 

// Dialogue function returns appropriate response to each topic,
// executes relevant actions, and updates topic array in dialogue 
// interface as needed
function dialogue(topic)
{
	switch(topic)
	{
		case "You're my informant?":
			Obj_Dialogue.response = @"I am, but information isn't
			free. I crave a bottle of
			Old Bog Sweat. I'd settle for
			five bottles of Biscuit Wash.";
			Obj_Dialogue.response_height = LINE_HEIGHT * 4;
			Obj_Dialogue.response_scale = 3;
			dialogue_options[0] = "How can I get that stuff?";
			dialogue_options[1] = "I brought your Old Bog Sweat."
			dialogue_options[2] = "I brought your Biscuit Wash."
			options_count = 3; 
			break;
		case "How can I get that stuff?":
			Obj_Dialogue.response = "Bartender will sell it.";
			Obj_Dialogue.response_height = LINE_HEIGHT;
			Obj_Dialogue.response_scale = 1;
			dialogue_options[0] = "I don't have any cash."; 
			break;
		case "I don't have any cash.":
			Obj_Dialogue.response = @"What, seriously? Take trash
			to the recycler machine near
			the algae processing plant.
			It's not much, though.
			Maybe steal stuff and sell
			it? Up to you.";
			Obj_Dialogue.response_height = LINE_HEIGHT * 6;
			Obj_Dialogue.response_scale = 5;
			dialogue_options[0] = "What do you want?"; 
			break;
		case "I brought your Old Bog Sweat.":
			if (has_item(item.OldBogSweat, Obj_Player.inventory, Obj_Player.slots_filled) == true)
			{
				inventory_Remove(Obj_Player,get_item_index(Obj_Player.inventory, Obj_Player.slots_filled, item.OldBogSweat));
				Obj_Dialogue.response = "Excellent, this stuff is my\nfavorite!";
				Obj_Dialogue.response_height = LINE_HEIGHT * 2;
				Obj_Dialogue.response_scale = 1;
				dialogue_options[0] = "Tell me what you know.";
				options_count = 1;
			}
			else
			{
				Obj_Dialogue.response = "No you didn't.";
				Obj_Dialogue.response_height = LINE_HEIGHT;
				Obj_Dialogue.response_scale = 1;
			} 
			break;
		case "I brought your Biscuit Wash.":
			if ((has_item(item.BiscuitWash,Obj_Player.inventory,Obj_Player.slots_filled == true) == true))
			{
				BWIndex = get_item_index(Obj_Player.inventory, Obj_Player.slots_filled, item.BiscuitWash);
				if (Obj_Player.inventory[BWIndex][1] >= 5)
				{
					for (var i =0; i <= 5; ++i)
					{
						inventory_Remove(Obj_Player, BWIndex);
					}
					Obj_Dialogue.response = "Not my favorite, but it'll get the job done.";
					Obj_Dialogue.response_height = LINE_HEIGHT;
					Obj_Dialogue.response_scale = 1;
					dialogue_options[0] = "You've got your drink, tell me what you know.";
					options_count = 1;
				}
				else{
					Obj_Dialogue.response = "No you didn't.";
					Obj_Dialogue.response_height = LINE_HEIGHT;
					Obj_Dialogue.response_scale = 1;
				}
			}
		else
		{
			Obj_Dialogue.response = "No you didn't.";
			Obj_Dialogue.response_height = LINE_HEIGHT;
			Obj_Dialogue.response_scale = 1;
		} 
		break;
		case "Tell me what you know.":
			Obj_Quest_Tracker.quest_update("Sket");
			Obj_Dialogue.response = @"I overheard a guy trying to
			sell a gun at the bar. Didn't
			recognize him. Try asking the
			bar tender about him. 
			(suspect description aquired)";
			Obj_Dialogue.response_height = LINE_HEIGHT * 5;
			Obj_Dialogue.response_scale = 4;
			dialogue_options[0] = "Tell me what you know again."; 
			break;
		case "Tell me what you know again.":
			Obj_Dialogue.response = @"I overheard a guy trying to
			sell a gun at the bar. Didn't
			recognize him. Try asking the
			bar tender about him. 
			(suspect description aquired)";
			Obj_Dialogue.response_height = LINE_HEIGHT * 5;
			Obj_Dialogue.response_scale = 4;
			break;
	}
}