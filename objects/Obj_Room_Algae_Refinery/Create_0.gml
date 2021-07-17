function furnitureFill(instance)
{
	if (instance.object_index == Obj_Computer_A)
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
						Obj_Quest_Tracker.electronics_theft += 1;
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
						Obj_Quest_Tracker.electronics_theft += 1;
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
	
	if (instance.object_index == Obj_Computer_C)
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
						Obj_Quest_Tracker.electronics_theft += 1;
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
}