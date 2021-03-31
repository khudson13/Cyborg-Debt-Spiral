NPC_name = "Betl";

alive = true;

// NPC inventory. 
inventory = inventory_create(19);
slots_filled = 0;

// NPC default dialogue choices, populated from NPC master array
dialogue_options = ["Hello"];
options_count = 1;

// Dialogue function returns appropriate response to each topic,
// executes relevant actions, and updates topic array in dialogue 
// interface as needed
function dialogue(topic){
	switch(topic){
		case "Hello":
			Obj_Dialogue.response = "I'm Betl, the shopkeeper. I'm not fully implemented yet.";
			break;
	}
}

