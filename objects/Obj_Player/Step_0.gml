/// @description Every Step

switch (keyboard_key)
{
	// DIRECTIONAL CONTROLS
	case Obj_Control_Definitions.control_up: y -= TILE_SIZE; break;
	case Obj_Control_Definitions.control_left: x -= TILE_SIZE; break;
	case Obj_Control_Definitions.control_right: x += TILE_SIZE; break;
	case Obj_Control_Definitions.control_down: y += TILE_SIZE; break;
}