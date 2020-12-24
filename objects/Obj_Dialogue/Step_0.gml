/// @description Insert description here
// You can write your code in this editor


switch(keyboard_key){
	case Obj_Control_Definitions.control_up:
		selected_index -= 1; 
		if (selected_index < 0){selected_index = options_count;}
		io_clear(); break;
	case Obj_Control_Definitions.control_down:
		selected_index += 1; 
		if (selected_index > options_count){selected_index = 0;}
		io_clear(); break;
	case Obj_Control_Definitions.control_right:
		io_clear();
		access = selected_index;
		talking_ID.dialogue(dialogue_options[selected_index]) break;
	case Obj_Control_Definitions.escape:
		Obj_Player.control = true;
		io_clear();
		instance_destroy(self);
}
