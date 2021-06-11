NPC_name = "nobody";

alive = true;

// NPC INVENTORY
inventory = inventory_create(19);
slots_filled = 0;

// Dialogue - how many things this character can say
options_count = 3;

function one_Liner()
{
	instance_destroy(Obj_Dialogue);
	instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
	
	var what_Say = irandom(options_count - 1);
	
	switch (what_Say)
	{
		case 0:
			Obj_Word_Bubble.content = "Talk to me about grilled cheese";
			Obj_Word_Bubble.lines_multiple = 1;
			break;
		
		case 1:
			Obj_Word_Bubble.content = "I care deeply about grilled cheese";
			Obj_Word_Bubble.lines_multiple = 1;
			break;
			
		case 2:
			Obj_Word_Bubble.content = "God is a grilled cheese sandwich.\nYou know it's true.";
			Obj_Word_Bubble.lines_multiple = 2;
			break
	}
}