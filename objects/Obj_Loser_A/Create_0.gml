NPC_name = "Citizen";

alive = true;

// NPC INVENTORY
inventory = inventory_create(19);
slots_filled = 0;

// Dialogue - how many things this character can say
options_count = 3;

function one_Liner()
{
	instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
	
	var what_Say = irandom(options_count - 1);
	
	switch (what_Say)
	{
		case 0:
			Obj_Word_Bubble.content = "Who are you?";
			Obj_Word_Bubble.lines_multiple = 1;
			break;
		
		case 1:
			Obj_Word_Bubble.content = "You don't belong\nhere.";
			Obj_Word_Bubble.lines_multiple = 2;
			break;
			
		case 2:
			Obj_Word_Bubble.content = "You should leave.";
			Obj_Word_Bubble.lines_multiple = 2;
			break
	}
}