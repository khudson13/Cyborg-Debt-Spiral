
display_height = 35; // Character tallness
selected_index = 0;

// Generate a list of trash held by player
inventory_size = 19;
inventory = inventory_create(inventory_size);
slots_filled = 0;

for (var i = 0; i < Obj_Player.slots_filled; ++i)
{
	if (Obj_Player.inventory[i][0] > item.garbage_start && Obj_Player.inventory[i][0] < item.garbage_end)
	{
		for (var ii = 0; ii < Obj_Player.inventory[i][1]; ++ii)
		{
			inventory_Add(Obj_Recycler_UI,inventory,inventory_size,Obj_Player.inventory[i][0]);
		}
	}
}


function recycle(trash)
{
	
	switch (trash)
	{
		case item.drink_can:
			Obj_Player.money += 0.05; break;
		case item.empty_bottle:
			Obj_Player.money += 0.10; break;
		case item.paper_trash_A:
			Obj_Player.money += 0.01; break;
		case item.paper_trash_B:
			Obj_Player.money += 0.01; break;
	}
}