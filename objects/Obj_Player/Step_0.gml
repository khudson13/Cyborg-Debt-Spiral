/// @description Every Step

// Check if controling character
if (control == true)
{
	// UP DOWN
	if (keyboard_check(Obj_Control_Definitions.control_up) && keyboard_check(Obj_Control_Definitions.control_down))
	{
		// DO NOTHING
	}
	// LEFT RIGHT
	else if (keyboard_check(Obj_Control_Definitions.control_left) && keyboard_check(Obj_Control_Definitions.control_right))
	{
		// DO NOTHING
	}
	// UP LEFT
	else if (keyboard_check(Obj_Control_Definitions.control_up) && keyboard_check(Obj_Control_Definitions.control_left))
	{
		prevY = y;
		prevX = x;
		y -= TILE_SIZE / 8;
		x -= TILE_SIZE / 8;
	}
	// UP RIGHT
	else if (keyboard_check(Obj_Control_Definitions.control_up) && keyboard_check(Obj_Control_Definitions.control_right))
	{
		prevY = y;
		prevX = x;
		y -= TILE_SIZE / 8;
		x += TILE_SIZE / 8;
	}
	// DOWN LEFT
	else if (keyboard_check(Obj_Control_Definitions.control_down) && keyboard_check(Obj_Control_Definitions.control_left))
	{
		prevY = y;
		prevX = x;
		y += TILE_SIZE / 8;
		x -= TILE_SIZE / 8;
	}
	// DOWN RIGHT
	else if (keyboard_check(Obj_Control_Definitions.control_down) && keyboard_check(Obj_Control_Definitions.control_right))
	{
		prevY = y;
		prevX = x;
		y += TILE_SIZE / 8;
		x += TILE_SIZE / 8;;
	}
	else if (keyboard_check(Obj_Control_Definitions.control_up))
	{
		prevY = y;
		prevX = x;
		y -= TILE_SIZE / 4; 
	}
	else if (keyboard_check(Obj_Control_Definitions.control_down))
	{
		prevY = y;
		prevX = x;
		y += TILE_SIZE / 4;
	}
	else if (keyboard_check(Obj_Control_Definitions.control_left))
	{
		prevX = x;
		prevY = y;
		x -= TILE_SIZE / 4;
	}
	else if (keyboard_check(Obj_Control_Definitions.control_right))
	{
		prevX = x;
		prevY = y;
		x += TILE_SIZE / 4;
	}

	switch (keyboard_key)
	{
		// DIRECTIONAL CONTROLS
		/*
		// Consider changing grid size to avoid this 'divide by 2' work around
	
		case Obj_Control_Definitions.control_up: prevY = y; prevX = x;
			y -= TILE_SIZE / 2; io_clear(); break;
		case Obj_Control_Definitions.control_left: prevX = x; prevY = y;
			x -= TILE_SIZE / 2; io_clear(); break;
		case Obj_Control_Definitions.control_right: prevX = x; prevY = y;
			x += TILE_SIZE / 2; io_clear(); break;
		case Obj_Control_Definitions.control_down: prevY = y; prevX = x;
			y += TILE_SIZE / 2; io_clear(); break;
		*/
		// QUIT GAME
		case Obj_Control_Definitions.escape: 
			instance_create_layer(Obj_Player.x - 50, Obj_Player.y - 50, "UI_Windows", Obj_Escape_Menu);
			io_clear();
			break;
	
		// INTERACTION CONTROLS

		case Obj_Control_Definitions.interact:
			control = false;
			instance_create_layer(x, y, "Instances", Obj_Interact);
			io_clear();
			break;
		
		// UI CONTROLS
	
		// open inventory
		case Obj_Control_Definitions.inventory:
			control = false;
			instance_create_layer(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), "UI_Windows", Obj_Inventory_window); 
			io_clear();
			break;
	}
}