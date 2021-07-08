roomID = "C-3.4"; //Ident of unique room or category

function furnitureFill(instance)
{
	if (instance.object_index == Obj_Cabinet_B)
	{
		instance.slots_filled = 3;
		instance.inventory[0][0] = item.Rags;
		instance.inventory[0][1] = 5;
		instance.inventory[1][0] = item.Alloy_Ingot;
		instance.inventory[1][1] = 1;
		instance.inventory[2][0] = item.Note;
		instance.inventory[2][1] = 1;
	}
}

function door(instance)
{
	instance.locked = false;
}