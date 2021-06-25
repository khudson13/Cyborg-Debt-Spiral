roomID = "A-1.4";

function furnitureFill(instance)
{
	if (instance.object_index == Obj_Trash_Bin)
	{
		instance.slots_filled = 1;
		instance.inventory[0][0] = item.empty_bottle;
		instance.inventory[0][1] = 3;
	}
}

function door(instance)
{

}