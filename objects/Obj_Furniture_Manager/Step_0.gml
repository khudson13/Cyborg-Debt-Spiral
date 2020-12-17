/// @description Insert description here
// You can write your code in this editor


// FURNITURE CONTROLS
switch(keyboard_key)
{
	// Exit
	case Obj_Control_Definitions.escape:
	Obj_Player.control = true;
	furniture.accessed = false;
	io_clear();
	instance_destroy(self);
}