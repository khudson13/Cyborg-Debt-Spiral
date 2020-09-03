/// @description Insert description here
// You can write your code in this editor

	switch(keyboard_key){
		case Obj_Control_Definitions.control_up:
			selected_index -= 1; 
			io_clear(); break;
		case Obj_Control_Definitions.control_down:
			selected_index += 1; 
			io_clear(); break;
		case Obj_Control_Definitions.escape:
			Obj_Player.control = true;
			io_clear();
			instance_destroy(self);
	}

if (selected_index < 0) {selected_index = 0;}
if (selected_index > 9) {selected_index = 9;}