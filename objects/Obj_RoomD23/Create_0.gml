roomID = "D-2.3"; //Ident of unique room or category

function door(instance)
{
	instance.locked = true;
	instance.lockDifficulty = 100; // Can't be picked
	
	with(other)
	{
		instance.access = function()
		{	
			if (locked == true)
			{
				Obj_Quest_Tracker.quest_update("D-2.3");
				if (has_item(item.ZedKey,Obj_Player.inventory,Obj_Player.inventory_size) == true)
					{
					locked = false;
					}
			}
			if (passable == false && locked == false)
			{
				instance_destroy(Obj_Furniture_Manager);
				passable = true;
				sprite_index = Spr_VertDoor_A_Open;
				Obj_Player.control = true;
			}
			else if (passable == true)
			{
				instance_destroy(Obj_Furniture_Manager);
				passable = false;
				sprite_index = Spr_VertDoor_A;
				Obj_Player.control = true;
			}
		}
	}
}

function furnitureFill(instance)
{
	if (instance.object_index == Obj_Computer_B)
	{
		instance.hasOptions = true;
		instance.options_number = 1;
		instance.options_list[0] = "Gut it for scrap";
		
		with(other)
		{
			instance.options = function(selected_option)
			{
				switch (selected_option)
				{
					case "Gut it for scrap":
						inventory_Add(Obj_Player, Obj_Player.inventory, Obj_Player.inventory_size, item.Scrap_Electronics);
						hasOptions = false;
						sprite_index = Spr_Computer_C;
						name = "Broken Computer";
						description = "This computer is broken."
						instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
						Obj_Word_Bubble.content = "You completely ruin\nthe computer.";
						Obj_Word_Bubble.lines_multiple = 2;
						Obj_Word_Bubble.image_xscale += 0.4;
						io_clear();
						instance_destroy(Obj_Furniture_Manager);
						break;
				}
			}
		}
	}
	
	if (instance.object_index == Obj_Cabinet_C)
	{
		instance.slots_filled = 1;
		instance.inventory[0][0] = item.Zed_Note;
		instance.inventory[0][1] = 1;
	}
}
