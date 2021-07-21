NPC_name = "Citizen";

alive = true;

// NPC INVENTORY
inventory = inventory_create(19);
slots_filled = 0;

// NPC default dialogue choices, populated from NPC master array
dialogue_options = [];
options_count = 3;

function one_Liner()
{
	instance_destroy(Obj_Dialogue);
	instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
	
	var what_Say = irandom(options_count - 1);
	
	switch (what_Say)
	{
		case 0:
			Obj_Word_Bubble.content = "Once heard of something\ncalled 'cheese.'";
			Obj_Word_Bubble.lines_multiple = 2;
			break;
			
		case 1:
			Obj_Word_Bubble.content = "I forgot to lock my door!";
			Obj_Word_Bubble.lines_multiple = 1;
			break;
			
		case 2:
			Obj_Word_Bubble.content = "Toasted algae.\nBoiled algae.\nFermented algae.\nBlended algae.\nScrambled algae.\nBlech.";
			Obj_Word_Bubble.lines_multiple = 6;
			break;
	}
}