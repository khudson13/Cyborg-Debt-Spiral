switch (keyboard_key)
{
	// Navigate the menu
	case Obj_Control_Definitions.control_up:
		selected_index -= 1;
		if (selected_index < 0) 
		{
			selected_index = totalCount - 1;
		}
		io_clear();
		break;
	case Obj_Control_Definitions.control_down:
		selected_index += 1;
		if (selected_index > totalCount - 1) 
		{
			selected_index = 0;
		}
		io_clear(); 
		break;
	
	// Execute menu choice
	case Obj_Control_Definitions.interact:
	
		// If item pickup
		if (selected_index < (itemCount))
		{
			Obj_Player.inventory = inventory_Add(Obj_Player, Obj_Player.inventory, Obj_Player.inventory_size, items[| selected_index].ItemID); // Copy item to inventory
			Obj_Player.total_weight += Obj_Items_Master.ItemsMaster[items[| selected_index].ItemID][itemstats.weight]; // Increase carried weight
			instance_destroy(items[| selected_index]);  // Destroy item instance on floor
			Obj_Player.control = true;
			io_clear();
			instance_destroy(self);
		}
		
		// If npc talk
		if((selected_index < ((itemCount) + (npcCount))) && (selected_index > (itemCount - 1)))
		{
			if (npc[| selected_index - itemCount].alive == true)
			{
				instance_create_layer(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), "UI_Windows", Obj_Dialogue);
			}
			else
			{
				global.CALLING_INSTANCE = npc[| selected_index - itemCount];
				instance_create_layer(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), "UI_Windows", Obj_Inventory_Swap);
			}
			io_clear();
			instance_destroy(self);
		}
	
		// If furniture interact
		if (selected_index >= ((itemCount) + (npcCount)))
		{
			instance_create_layer(Obj_Player.x,Obj_Player.y,"UI_Windows",Obj_Furniture_Manager);
			instance_destroy(self);
		}
		io_clear(); 
		break;
	
	// QUIT GAME
	case Obj_Control_Definitions.escape:
		Obj_Player.control = true;
		io_clear();
		instance_destroy(self);
	
}