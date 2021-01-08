/// @description Insert description here
// You can write your code in this editor

NPC_name = "Barkeep";

// NPC inventory. Everybody has something.
// This will be populated from a master NPC array similar to the items array
inventory = [];
for (var i = 0; i < 10; ++i;)
{inventory[i] = item.nothing;}

// NPC default dialogue choices, populated from NPC master array
dialogue_options = ["What's on tap?", "Anything interesting going on?"];
options_count = 0;

// Dialogue function returns appropriate response to each topic,
// executes relevant actions, and updates topic array in dialogue 
// interface as needed
function dialogue(topic){
	switch(topic){
		case "What's on tap?":
			Obj_Dialogue.response = "CONTENT INCOMPLETE"; break;
		case "Anything interesting going on?":
			Obj_Dialogue.response = "Buy something if you want to talk." break;
	}} 

// Evidence which the NPC can reveal
// Populated when a case starts, cleared when the case concludes
knowsabout = [];