// MAIN INVENTORY WINDOW
if (menu_access == -1)
{
	switch(keyboard_key)
	{
		case Obj_Control_Definitions.control_up:
			selected_index -= 1; 
			io_clear(); 
			break;
		case Obj_Control_Definitions.control_down:
			selected_index += 1; 
			io_clear(); 
			break;
		case Obj_Control_Definitions.interact:
			io_clear();
			menu_access = selected_index; 
			if (inventory[selected_index][0] == item.nothing)
			{
				menu_access = -1;
			}
			break;
		case Obj_Control_Definitions.escape:
			Obj_Player.control = true;
			io_clear();
			instance_destroy(self);
	}
}


// INVENTORY SUB-MENU
if ((menu_access != -1) && (subaccess == -1))
{
	switch (keyboard_key)
	{
		case Obj_Control_Definitions.control_up:
			selected_subindex -= 1;
			if (selected_subindex < 1)
			{
				selected_subindex = Obj_Items_Master.ItemsMaster[inventory[selected_index][0]][itemstats.menu][0];
			}
			io_clear(); 
			break;
		case Obj_Control_Definitions.control_down:
			selected_subindex += 1; 
			if (selected_subindex > Obj_Items_Master.ItemsMaster[inventory[selected_index][0]][itemstats.menu][0])
			{
				selected_subindex = 1;
			}
			io_clear(); 
			break;
		case Obj_Control_Definitions.interact:
			io_clear();
			subaccess = selected_subindex; 
			break;
		case Obj_Control_Definitions.escape:
			io_clear();
			menu_access = -1;
			selected_subindex = 1; 
			break;
	}
}
	
if (subaccess != -1)
{
	switch (keyboard_key)
	{
		case Obj_Control_Definitions.escape:
			io_clear();
			subaccess = -1; 
			break;
	}
}

// ACTIVATE SUBMENU COMMAND
if (subaccess != -1)
{		
	// if "drop"
	if (Obj_Items_Master.ItemsMaster[inventory[selected_index][0]][itemstats.menu][subaccess] == "drop")
	{
		subaccess = -1;
		selected_subindex = 1;
		inventory_Drop(Obj_Player,selected_index,Obj_Player.x,Obj_Player.y);
		menu_access = -1;
		io_clear();
	}
	else if (Obj_Items_Master.ItemsMaster[inventory[selected_index][0]][itemstats.menu][subaccess] == "look")
	{
		instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble_Look);
		Obj_Word_Bubble_Look.content = Obj_Items_Master.ItemsMaster[inventory[selected_index][0]][itemstats.description];
		Obj_Word_Bubble_Look.x = Obj_Player.x - 200;
		Obj_Word_Bubble_Look.y = Obj_Player.y - 50;
		Obj_Word_Bubble_Look.image_xscale = 5.5;
		Obj_Word_Bubble_Look.lines_multiple = 2;
		Obj_Word_Bubble_Look.Xmod = 30;
		Obj_Word_Bubble_Look.selected_index = selected_index;
		instance_destroy(self);
	}
	else //if (Obj_Items_Master.ItemsMaster[inventory[selected_index][0]][itemstats.menu][subaccess] != "look")
	{
		io_clear();
		item_Script_Exec(inventory[selected_index][0], Obj_Items_Master.ItemsMaster[inventory[selected_index][0]][itemstats.menu][subaccess]);
	}
	
}

// Prevent base inventory selection from going out of bounds
// Attempting to go out of bounds loops to other end
if (selected_index < 0) 
{
	selected_index = Obj_Player.slots_filled - 1;
}
if (selected_index > Obj_Player.slots_filled - 1) 
{
	selected_index = 0;
}