/// @description Insert description here
// You can write your code in this editor

if (access == -1){
	switch(keyboard_key){
		case Obj_Control_Definitions.control_up:
			selected_index -= 1; 
			if (selected_index < 0){
				selected_index = menu_items - 1;}
			io_clear(); break;
		case Obj_Control_Definitions.control_down:
			selected_index += 1; 
			if (selected_index >= menu_items){
				selected_index = 0;}
			io_clear(); break;
		case Obj_Control_Definitions.control_right:
			io_clear();
			access = selected_index; break;
	}
}


if (access = 0){room_goto(R2_Demo_Level);}