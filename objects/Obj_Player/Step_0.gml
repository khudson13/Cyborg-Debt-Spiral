/// @description Every Step

switch (keyboard_key)
{
	// DIRECTIONAL CONTROLS
	
	// Consider changing grid size to avoid this 'divide by 2' work around
	
	case Obj_Control_Definitions.control_up: y -= TILE_SIZE / 2; break;
	case Obj_Control_Definitions.control_left: x -= TILE_SIZE / 2; break;
	case Obj_Control_Definitions.control_right: x += TILE_SIZE / 2; break;
	case Obj_Control_Definitions.control_down: y += TILE_SIZE / 2; break;
}