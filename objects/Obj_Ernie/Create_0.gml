/// @description Variable definitions and decision code

// FOR THE DEMO VERSION ALL NPC ATTRIBUTES ARE HARD CODED

NPC_name = "Ernie";

// NPC inventory. 
inventory = inventory_create(19);
slots_filled = 0;

// NPC default dialogue choices, populated from NPC master array
dialogue_options = ["Hello", "So, tell me..."];
options_count = 2;


// Dialogue function returns appropriate response to each topic,
// executes relevant actions, and updates topic array in dialogue 
// interface as needed
function dialogue(topic){
	switch(topic){
		case "Hello":
			Obj_Dialogue.response = "Hello, I'm Ernie."; break;
		case "So, tell me...":
			if (bartender_clue == true){
			dialogue_options[1] = "I heard someone was trying to sell a gun";
			options_count = 2;
			}
			else{
				Obj_Dialogue.response = "I got nothing.";
			} break;
		case "I heard someone was trying to sell a gun":
			Obj_Dialogue.response = "I remember seeing that guy. He was talking mostly to Baxter and... someone else.\nI forget who. Baxter works the algae refinery.";
			break;
	}
} 

