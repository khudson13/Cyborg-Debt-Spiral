if (menu_access == -1)
{
	switch(keyboard_key)
	{
		case Obj_Control_Definitions.control_up:
			selected_index -= 1; 
			if (selected_index < 0)
			{
				selected_index = menu_items - 1;
			}
			io_clear(); break;
		case Obj_Control_Definitions.control_down:
			selected_index += 1; 
			if (selected_index >= menu_items)
			{
				selected_index = 0;
			}
			io_clear(); break;
		case Obj_Control_Definitions.interact:
			io_clear();
			menu_access = selected_index; break;
	}
}

if (menu_access != -1)
{
	if (menu_array[menu_access] == "RESUME")
	{
		io_clear();
		Obj_Player.control = true;
		instance_destroy(self);
	}

	if (menu_array[menu_access] == "CONTROLS")
	{
		instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Word_Bubble);
		Obj_Word_Bubble.x = Obj_Player.x - 200;
		Obj_Word_Bubble.y = Obj_Player.y - 50;
		Obj_Word_Bubble.content = "CONTROLS\nW = up   S = down\nA = left   D = right\nI = open inventory\nE = interact / menu select\nEsc = exit / main menu";
		Obj_Word_Bubble.lines_multiple = 7;
		Obj_Word_Bubble.image_xscale = 5.5;
		Obj_Word_Bubble.image_yscale = 3;
		Obj_Word_Bubble.Xmod = 30;
		instance_destroy(self);
	}

	if (menu_array[menu_access] == "QUIT")
	{
		game_end();
	}
}