/*if (keyboard_check_pressed(vk_anykey))
{
	io_clear();
	room_goto(R2_Demo_Level);
}*/


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


if (menu_access == 0)
{
	room_goto(R2_Demo_Level);
}
if (menu_access == 1)
{
	room_goto(R3_Arena);
}