
NPC_name = "Crump";

alive = true;

// NPC INVENTORY
inventory = inventory_create(19);
slots_filled = 0;

// DIALOGUE STARTING OPTIONS
dialogue_options = ["Hello"];
options_count = 1;


function dialogue(topic){
	switch(topic){
		case "Hello":
			Obj_Dialogue.response = "Hello, I'm Crump. I'd kill you if my programmer world hurry up\nand teach me how to.";
			break;
	}
}

