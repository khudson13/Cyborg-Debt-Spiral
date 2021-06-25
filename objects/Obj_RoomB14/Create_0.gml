roomID = "B-1.4";

function furnitureFill(instance)
{
	if (instance.object_index == Obj_Cabinet_C)
	{
		instance.slots_filled = 1;
		instance.inventory[0][0] = item.Rags;
		instance.inventory[0][1] = 6;
	}
}

function door(instance)
{
	instance.locked = true;
}