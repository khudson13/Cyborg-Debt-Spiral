roomID = "Hideout Entrance"; //Ident of unique room or category

function furnitureFill(instance)
{
	instance.locked = true;
	instance.lockDifficulty = 100; // Can't be picked
	instance.description = "It's locked tight\nThere's an unusually\nshaped keyhole."
	//instance.text_yscale += 1;
	
	with (other)
	{
		instance.access = function()
		{
			Obj_Furniture_Manager.name = name;
			Obj_Furniture_Manager.description = description;
			
			if (has_item(item.Manhole_Key,Obj_Player.inventory,Obj_Player.inventory_size) == true)
			{
				locked = false;
			}
			if (locked == false)
			{
				Obj_Player.x = 5184;
				Obj_Player.y = 10880;
				Obj_Player.control = true;
				instance_destroy(Obj_Furniture_Manager);
			}
		}
	}
}


