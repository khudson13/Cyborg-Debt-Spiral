roomID = "B-3.1";

function furnitureFill(instance)
{
	if (instance.object_index == Obj_Trash_Bin)
	{
		instance.slots_filled = 2;
		instance.inventory[0][0] = item.drink_can;
		instance.inventory[0][1] = 3;
		instance.inventory[1][0] = item.empty_bottle;
		instance.inventory[1][1] = 2;
	}
}

function door(instance)
{

}