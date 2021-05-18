name = "Sector Gate";
passable = false;
locked = true;
hasInventory = false;
hasOptions = false;

function access()
{
	if (locked == true)
	{
		Obj_Furniture_Manager.name = name;
		Obj_Furniture_Manager.description = "This door is locked.";
	}
	else if (locked == false && passable == false)
	{
		instance_destroy(Obj_Furniture_Manager);
		passable = true;
		sprite_index = Spr_Sector_Gate_Open;
		Obj_Player.control = true;
	}
	else if (passable == true)
	{
		instance_destroy(Obj_Furniture_Manager);
		passable = false;
		sprite_index = Spr_Sector_Gate;
		Obj_Player.control = true;
	}
}