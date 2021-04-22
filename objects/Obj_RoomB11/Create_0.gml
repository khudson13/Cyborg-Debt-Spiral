
roomID = "B-1.1"; //Ident of unique room or category

function furnitureFill(instance)
{
	if (instance.object_index == Obj_Cabinet_C)
	{
		instance.slots_filled = 2;
		instance.inventory[0][0] = item.passport;
		instance.inventory[0][1] = 1;
		instance.inventory[1][0] = item.homemade_knife;
		instance.inventory[1][1] = 1; 
	}
}

function door(instance)
{
	
}