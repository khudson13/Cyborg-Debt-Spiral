roomID = "C-2.3"; //Ident of unique room or category

function furnitureFill(instance)
{
	if (instance.object_index == Obj_Cabinet_B)
	{
		instance.slots_filled = 2;
		instance.inventory[0][0] = item.Rags;
		instance.inventory[0][1] = 4;
		instance.inventory[1][0] = item.Alloy_Ingot;
		instance.inventory[1][1] = 2;
	}
}

function door(instance)
{
	instance.locked = true;
}