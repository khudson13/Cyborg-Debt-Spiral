roomID = "D-1.2";

function furnitureFill(instance)
{
	if (instance.object_index == Obj_Cabinet_B)
	{
		instance.slots_filled = 1;
		instance.inventory[0][0] = item.Knick_Knack;
		instance.inventory[0][1] = 1;
	}
}

function door(instance)
{
	instance.locked = true;
}