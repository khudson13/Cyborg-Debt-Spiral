
// FURNITURE CONTROLS
switch(keyboard_key)
{
	// Options menu up
	case Obj_Control_Definitions.control_up:
		if (furniture.hasOptions == true)
		{
			selected_option -= 1;
			if (selected_option < 0)
			{
				selected_option = furniture.options_number - 1;
			}
		}
		io_clear(); break;
		
	// Options menu down
	case Obj_Control_Definitions.control_down:
		if (furniture.hasOptions == true)
		{
			selected_option += 1;
			if (selected_option >= furniture.options_number)
			{
				selected_option = 0;
			}
		}
		io_clear(); break;
		
	// Access inventory
	case Obj_Control_Definitions.interact:
		if (furniture.hasInventory == true)
		{
			global.CALLING_INSTANCE = furniture;
			instance_create_layer(x,y,"UI_Windows",Obj_Inventory_Swap);
			io_clear();
			instance_destroy(self);
		}
		if (furniture.hasOptions == true)
		{
			furniture.options(furniture.options_list[selected_option]);
		}
		io_clear(); break;
		
	// Exit
	case Obj_Control_Definitions.escape:
		Obj_Player.control = true;
		io_clear();
		instance_destroy(self);
}