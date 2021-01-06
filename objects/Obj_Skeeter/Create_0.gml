/// @description Insert description here
// You can write your code in this editor

NPC_name = "Skeeter";

// NPC inventory. Everybody has something.
// This will be populated from a master NPC array similar to the items array
inventory = [];
for (var i = 0; i < 10; ++i;)
{inventory[i] = item.nothing;}

// NPC default dialogue choices, populated from NPC master array
dialogue_options = ["What do you want?", "I brought your stuff."];
options_count = 2;

// Dialogue function returns appropriate response to each topic,
// executes relevant actions, and updates topic array in dialogue 
// interface as needed
function dialogue(topic){
	switch(topic){
		case "What do you want?":
			Obj_Dialogue.response = "I crave a bottle of Old Bog Sweat. Or five bottles of Biscuit Wash.";
			dialogue_options[0] = "How can I get that stuff?"; break;
		case "How can I get that stuff?":
			Obj_Dialogue.response = "Bartender will sell it.";
			dialogue_options[0] = "I don't have any cash."; break;
		case "I don't have any cash.":
			Obj_Dialogue.response = "What, seriously? Take trash to the reprocessor near the bar. It's not much, though.";
			dialogue_options[0] = "What do you want?"; break;
		case "I brought your stuff.":
			Obj_Dialogue.response = "CONTENT UNFINISHED";break;
	}}

// Evidence which the NPC can reveal
// Populated when a case starts, cleared when the case concludes
knowsabout = [];