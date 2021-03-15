/// @description Variable definitions and decision code

// FOR THE DEMO VERSION ALL NPC ATTRIBUTES ARE HARD CODED

NPC_name = "Baxter";

// NPC inventory. 
inventory = inventory_create(19);
slots_filled = 0;

// NPC default dialogue choices, populated from NPC master array
dialogue_options = ["Hello"];
options_count = 1;

// If both these are true the player can ask for the key.
clue_given = false;
door_checked = false;

// Dialogue function returns appropriate response to each topic,
// executes relevant actions, and updates topic array in dialogue 
// interface as needed
function dialogue(topic){
	switch(topic){
		case "Hello":
			Obj_Dialogue.response = "Hello, I'm Baxter."; break;
		case "Heard someone tried to sell you a gun":
			Obj_Dialogue.response = "Yeah, but I didn't hang around. Don't need that kind of trouble.\nI think the name was Albert. When I left, Chunk was still listening. Lives over in 3-C.";
			if (Obj_Player.found_lock == true){
				dialogue_options[2] = "D-2.3 is locked.";
				options_count += 1;
			}
			break;
		case "D-2.3 is locked.":
			Obj_Dialogue.response = "Chunk may be in trouble. I have the spare key. Here, you can use it.";
			break;
	}
} 

