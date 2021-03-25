/// @description Insert description here
// You can write your code in this editor

NPC_name = "Crump";

alive = true;

// NPC inventory. 
inventory = inventory_create(19);
slots_filled = 0;

// NPC default dialogue choices, populated from NPC master array
dialogue_options = [];
options_count = 0;


function dialogue(topic){
	switch(topic){
		case "Hello":
			Obj_Dialogue.response = "Hello, I'm Crump. I'd kill you if my programmer world hurry up\nand teach me how to.";
			break;
	}
}

