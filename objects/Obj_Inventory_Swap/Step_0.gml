
switch(keyboard_key)
{
	case Obj_Control_Definitions.control_up:
		selected_index -= 1; 
		io_clear(); break;
		
	case Obj_Control_Definitions.control_down:
		selected_index += 1; 
		io_clear(); break;
		
	case Obj_Control_Definitions.control_right:
		if (accessed_instance.slots_filled > 0)
		{
			column = 2;
		}
		io_clear(); break;
		
	case Obj_Control_Definitions.control_left:
		if (Obj_Player.slots_filled > 0)
		{
			column = 1;
		}
		io_clear(); break;
		
	case Obj_Control_Definitions.interact:
		if (column == 1)
		{
			// Gain money for selling
			if (commerce == true)
			{
				Obj_Player.money += Obj_Items_Master.ItemsMaster[Obj_Player.inventory[selected_index][0]][itemstats.worth];
			}
			// Transfer item to other
			accessed_instance.inventory = inventory_Add(accessed_instance,accessed_instance.inventory,accessed_instance.inventory_size,Obj_Player.inventory[selected_index][0])
			inventory_Remove(Obj_Player,selected_index);
			if (Obj_Player.slots_filled == 0)
			{
				column = 2;
			}
			io_clear(); break;
		}
				
		if (column == 2)
		{
			// Buying item, lose money
			if (commerce == true)
			{
				Obj_Player.money -= Obj_Items_Master.ItemsMaster[accessed_instance.inventory[selected_index][0]][itemstats.worth];
			}
			// If player able to buy
			if (Obj_Player.money >= 0)
			{
				Obj_Player.inventory = inventory_Add(Obj_Player,Obj_Player.inventory,Obj_Player.inventory_size,accessed_instance.inventory[selected_index][0]);
				inventory_Remove(accessed_instance,selected_index);
			}
			// If insufficient funds
			else
			{
				Obj_Player.money += Obj_Items_Master.ItemsMaster[accessed_instance.inventory[selected_index][0]][itemstats.worth];
				insufficient_funds = true;
			}
			if (accessed_instance.slots_filled == 0)
			{
				column = 1;
			} 
			io_clear(); break;
		}
				
	case Obj_Control_Definitions.escape:
		if (insufficient_funds == true)
		{
			insufficient_funds = false;
			io_clear(); break;
		}
		else
		{
			Obj_Player.control = true;
			io_clear();
			instance_destroy(self);
		}
}

// Cursor correction
if (selected_index < 0)
{
	if (column == 1)
	{
		selected_index = Obj_Player.slots_filled - 1;
	}
	if (column == 2)
	{
		selected_index = accessed_instance.slots_filled - 1;
	}
}
if (column == 1 && selected_index > Obj_Player.slots_filled - 1)
{
	selected_index = 0;
}
if (column == 2 && selected_index > accessed_instance.slots_filled - 1)
{
	selected_index = 0;
}