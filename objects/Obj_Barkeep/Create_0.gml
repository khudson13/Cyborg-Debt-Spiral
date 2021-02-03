/// @description Insert description here
// You can write your code in this editor

NPC_name = "Barkeep";

// NPC inventory. 
inventory_size= 19
inventory = inventory_create(inventory_size);
inventory[0][0] = item.OldBogSweat;
inventory[0][1] = 5;
inventory[1][0] = item.BiscuitWash;
inventory[1][1] = 10;
inventory[2][0] = item.BottledWater;
inventory[2][1] = 20;
slots_filled = 3;

// NPC default dialogue choices, populated from NPC master array
dialogue_options = ["What's on tap?", "Anything interesting going on?"];
options_count = 2;

// Dialogue function returns appropriate response to each topic,
// executes relevant actions, and updates topic array in dialogue 
// interface as needed
function dialogue(topic){
	switch(topic){
		case "What's on tap?":
			global.CALLING_INSTANCE = id;
			instance_create_layer(x,y,"UI_Windows",Obj_Inventory_Swap);
			Obj_Inventory_Swap.commerce = true;
			instance_destroy(Obj_Dialogue); break;
		case "Anything interesting going on?":
			Obj_Dialogue.response = "Buy something if you want to talk." break;
	}} 

// Evidence which the NPC can reveal
// Populated when a case starts, cleared when the case concludes
knowsabout = [];