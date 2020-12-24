/// @description Insert description here
// You can write your code in this editor

switch (keyboard_key)
{
	// Navigate the menu
	case Obj_Control_Definitions.control_up:
	selected_index -= 1;
	if (selected_index < 0) selected_index = totalCount - 1;
	io_clear(); break;
	case Obj_Control_Definitions.control_down:
	selected_index += 1;
	if (selected_index > totalCount - 1) selected_index = 0;
	io_clear(); break;
	
	// Execute menu choice
	case Obj_Control_Definitions.control_right:
	
	io_clear(); break;
	
	// QUIT GAME
	case Obj_Control_Definitions.escape:
	Obj_Player.control = true;
	io_clear();
	instance_destroy(self);
	
}