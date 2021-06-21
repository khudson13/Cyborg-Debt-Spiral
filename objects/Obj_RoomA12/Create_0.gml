roomID = "A-1.2"; 

function furnitureFill(instance){
	if (instance.object_index == Obj_Wall_Crack)
	{
		instance.slots_filled = 1;
		instance.inventory[0][0] = item.Lockpick;
		instance.inventory[0][1] = 1;
	}
}

function door(instance){

}