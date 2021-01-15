/// @description Insert description here
// You can write your code in this editor


// FURNITURE CONTROLS
switch(keyboard_key)
{
	// Access inventory
	case Obj_Control_Definitions.interact:
		global.CALLING_INSTANCE = furniture;
		instance_create_layer(x,y,"UI_Windows",Obj_Inventory_Swap);
		io_clear();
		instance_destroy(self); break;
	// Exit
	case Obj_Control_Definitions.escape:
		Obj_Player.control = true;
		io_clear();
		instance_destroy(self);
}