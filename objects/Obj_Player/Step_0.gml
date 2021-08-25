/// @description Every Step

// Check if controling character
if (control == true)
{
	// UP DOWN
	if (keyboard_check(Obj_Control_Definitions.control_up) && keyboard_check(Obj_Control_Definitions.control_down))
	{
		// DO NOTHING : HOLD STILL
	}
	// LEFT RIGHT
	else if (keyboard_check(Obj_Control_Definitions.control_left) && keyboard_check(Obj_Control_Definitions.control_right))
	{
		// DO NOTHING : HOLD STILL
	}
	// UP LEFT
	else if (keyboard_check(Obj_Control_Definitions.control_up) && keyboard_check(Obj_Control_Definitions.control_left))
	{
		if (keyboard_check_pressed(vk_space))
		{
			lunging = true;
			lunge_direction = "UP LEFT";
			control = false;
		}
		else
		{
			prevY = y;
			prevX = x;
			y -= 2;
			x -= 2;
		}
	}
	// UP RIGHT
	else if (keyboard_check(Obj_Control_Definitions.control_up) && keyboard_check(Obj_Control_Definitions.control_right))
	{
		if (keyboard_check_pressed(vk_space))
		{
			lunging = true;
			lunge_direction = "UP RIGHT";
			control = false;
		}
		else
		{
			prevY = y;
			prevX = x;
			y -= 2;
			x += 2;
		}
	}
	// DOWN LEFT
	else if (keyboard_check(Obj_Control_Definitions.control_down) && keyboard_check(Obj_Control_Definitions.control_left))
	{
		if (keyboard_check_pressed(vk_space))
		{
			lunging = true;
			lunge_direction = "DOWN LEFT";
			control = false;
		}
		else
		{
			prevY = y;
			prevX = x;
			y += 2;
			x -= 2;
		}
	}
	// DOWN RIGHT
	else if (keyboard_check(Obj_Control_Definitions.control_down) && keyboard_check(Obj_Control_Definitions.control_right))
	{
		if (keyboard_check_pressed(vk_space))
		{
			lunging = true;
			lunge_direction = "DOWN RIGHT";
			control = false;
		}
		else
		{
			prevY = y;
			prevX = x;
			y += 2;
			x += 2;
		}
	}
	// UP
	else if (keyboard_check(Obj_Control_Definitions.control_up))
	{
		if (keyboard_check_pressed(vk_space))
		{
			lunging = true;
			lunge_direction = "UP";
			control = false;
		}
		else
		{
			prevY = y;
			prevX = x;
			y -= 4; 
		}
	}
	// DOWN
	else if (keyboard_check(Obj_Control_Definitions.control_down))
	{
		if (keyboard_check_pressed(vk_space))
		{
			lunging = true;
			lunge_direction = "DOWN";
			control = false;
		}
		else
		{
			prevY = y;
			prevX = x;
			y += 4;
		}
	}
	// LEFT
	else if (keyboard_check(Obj_Control_Definitions.control_left))
	{
		if (keyboard_check_pressed(vk_space))
		{
			lunging = true;
			lunge_direction = "LEFT";
			control = false;
		}
		else
		{
			prevX = x;
			prevY = y;
			x -= 4;
		}
	}
	// RIGHT
	else if (keyboard_check(Obj_Control_Definitions.control_right))
	{
		if (keyboard_check_pressed(vk_space))
		{
			lunging = true;
			lunge_direction = "RIGHT";
			control = false;
		}
		else
		{
			prevX = x;
			prevY = y;
			x += 4;
		}
	}

	switch (keyboard_key)
	{
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

if (lunging == true)
{
	switch (lunge_direction)
	{
		case "UP RIGHT":
			prevY = y;
			prevX = x;
			y -= TILE_SIZE / 8;
			x += TILE_SIZE / 8;
			break;
		case "UP LEFT":
			prevY = y;
			prevX = x;
			y -= TILE_SIZE / 8;
			x -= TILE_SIZE / 8;
			break;
		case "DOWN RIGHT":
			prevY = y;
			prevX = x;
			y += TILE_SIZE / 8;
			x += TILE_SIZE / 8;
			break;
		case "DOWN LEFT":
			prevY = y;
			prevX = x;
			y += TILE_SIZE / 8;
			x -= TILE_SIZE / 8;
			break;
		case "UP":
			prevY = y;
			prevX = x;
			y -= TILE_SIZE / 4;
			break;
		case "DOWN":
			prevY = y;
			prevX = x;
			y += TILE_SIZE / 4;
			break;
		case "RIGHT":
			prevY = y;
			prevX = x;
			x += TILE_SIZE / 4;
			break;
		case "LEFT":
			prevY = y;
			prevX = x;
			x -= TILE_SIZE / 4;
			break;
	}
	
	lunge_time -= 1;
	if (lunge_time == 0)
	{
		lunging = false;
		lunge_direction = "";
		control = true;
		lunge_time = 5;
	}
}