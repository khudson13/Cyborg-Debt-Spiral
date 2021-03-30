/// @description Variable definitions and decision code

// FOR THE DEMO VERSION ALL NPC ATTRIBUTES ARE HARD CODED

NPC_name = "Chunk";

alive = false;

// NPC inventory. 
inventory_size = 19;
inventory = inventory_create(inventory_size);
slots_filled = 1;
inventory[0][0] = item.Manhole_Key;
inventory[0][1] = 1;

// NPC default dialogue choices, populated from NPC master array
dialogue_options = ["Hello"];
options_count = 1;

// Dialogue function returns appropriate response to each topic,
// executes relevant actions, and updates topic array in dialogue 
// interface as needed
function dialogue(topic){
	switch(topic){
		case "Hello":
			Obj_Dialogue.response = "Hello, I'm Chunk."; break;
	}
} 

