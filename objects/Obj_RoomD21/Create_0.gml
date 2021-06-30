roomID = "D-2.1"; //Ident of unique room or category

function furnitureFill(instance)
{
	if (instance.object_index == Obj_Cabinet_C)
	{
		instance.slots_filled = 2;
		instance.inventory[0][0] = item.Rags;
		instance.inventory[0][1] = 5;
		instance.inventory[1][0] = item.Knick_Knack;
		instance.inventory[1][1] = 1;
	}
}

function door(instance)
{
	instance.locked = true;
}