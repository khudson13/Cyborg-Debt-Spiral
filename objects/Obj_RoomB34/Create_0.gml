roomID = "B-3.4"; //Ident of unique room or category

function furnitureFill(instance)
{
	if (instance.object_index == Obj_Cabinet_B)
	{
		instance.slots_filled = 1;
		instance.inventory[0][0] = item.Rags;
		instance.inventory[0][1] = 7;
	}
}

function door(instance)
{
	instance.locked = true;
}