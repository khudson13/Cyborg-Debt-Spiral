roomID = "A-2.3";

function furnitureFill(instance)
{
	if (instance.object_index == Obj_Trash_Bin)
	{
		instance.slots_filled = 1;
		instance.inventory[0][0] = item.drink_can;
		instance.inventory[0][1] = 6;
	}
}

function door(instance)
{

}