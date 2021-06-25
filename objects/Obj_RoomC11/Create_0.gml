roomID = "C-1.1";

function furnitureFill(instance)
{
	if (instance.object_index == Obj_Cabinet_A)
	{
		instance.slots_filled = 1;
		instance.inventory[0][0] = item.Alloy_Ingot;
		instance.inventory[0][1] = 1;
	}
}

function door(instance)
{
	instance.locked = true;
}