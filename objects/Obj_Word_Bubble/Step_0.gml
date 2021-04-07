/// @description Insert description here
// You can write your code in this editor

switch (keyboard_key){
	case Obj_Control_Definitions.escape:
		Obj_Player.control = true;
		io_clear();
		instance_destroy(self);
}