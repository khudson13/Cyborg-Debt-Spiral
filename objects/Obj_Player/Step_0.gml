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
		if (!keyboard_check(Obj_Control_Definitions.point_up) && !keyboard_check(Obj_Control_Definitions.point_down) && !keyboard_check(Obj_Control_Definitions.point_left) && !keyboard_check(Obj_Control_Definitions.point_right))
		{
			if (instance_exists(Obj_Sword))
			{
			Obj_Sword.sprite_index = Obj_Sword.up_left_sprite;
			}
		}
		if (keyboard_check_pressed(Obj_Control_Definitions.lunge))
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
		if (!keyboard_check(Obj_Control_Definitions.point_up) && !keyboard_check(Obj_Control_Definitions.point_down) && !keyboard_check(Obj_Control_Definitions.point_left) && !keyboard_check(Obj_Control_Definitions.point_right))
		{
			if (instance_exists(Obj_Sword))
			{
			Obj_Sword.sprite_index = Obj_Sword.up_right_sprite;
			}
		}
		if (keyboard_check_pressed(Obj_Control_Definitions.lunge))
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
		if (!keyboard_check(Obj_Control_Definitions.point_up) && !keyboard_check(Obj_Control_Definitions.point_down) && !keyboard_check(Obj_Control_Definitions.point_left) && !keyboard_check(Obj_Control_Definitions.point_right))
		{
			if (instance_exists(Obj_Sword))
			{
			Obj_Sword.sprite_index = Obj_Sword.down_left_sprite;
			}
		}
		if (keyboard_check_pressed(Obj_Control_Definitions.lunge))
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
		if (!keyboard_check(Obj_Control_Definitions.point_up) && !keyboard_check(Obj_Control_Definitions.point_down) && !keyboard_check(Obj_Control_Definitions.point_left) && !keyboard_check(Obj_Control_Definitions.point_right))
		{
			if (instance_exists(Obj_Sword))
			{
			Obj_Sword.sprite_index = Obj_Sword.down_right_sprite;
			}
		}
		if (keyboard_check_pressed(Obj_Control_Definitions.lunge))
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
		if (!keyboard_check(Obj_Control_Definitions.point_up) && !keyboard_check(Obj_Control_Definitions.point_down) && !keyboard_check(Obj_Control_Definitions.point_left) && !keyboard_check(Obj_Control_Definitions.point_right))
		{
			if (instance_exists(Obj_Sword))
			{
			Obj_Sword.sprite_index = Obj_Sword.up_sprite;
			}
		}
		if (keyboard_check_pressed(Obj_Control_Definitions.lunge))
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
		if (!keyboard_check(Obj_Control_Definitions.point_up) && !keyboard_check(Obj_Control_Definitions.point_down) && !keyboard_check(Obj_Control_Definitions.point_left) && !keyboard_check(Obj_Control_Definitions.point_right))
		{
			if (instance_exists(Obj_Sword))
			{
			Obj_Sword.sprite_index = Obj_Sword.down_sprite;
			}
		}
		if (keyboard_check_pressed(Obj_Control_Definitions.lunge))
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
		if (!keyboard_check(Obj_Control_Definitions.point_up) && !keyboard_check(Obj_Control_Definitions.point_down) && !keyboard_check(Obj_Control_Definitions.point_left) && !keyboard_check(Obj_Control_Definitions.point_right))
		{
			if (instance_exists(Obj_Sword))
			{
			Obj_Sword.sprite_index = Obj_Sword.left_sprite;
			}
		}
		if (keyboard_check_pressed(Obj_Control_Definitions.lunge))
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
		if (!keyboard_check(Obj_Control_Definitions.point_up) && !keyboard_check(Obj_Control_Definitions.point_down) && !keyboard_check(Obj_Control_Definitions.point_left) && !keyboard_check(Obj_Control_Definitions.point_right))
		{
			if (instance_exists(Obj_Sword))
			{
			Obj_Sword.sprite_index = Obj_Sword.right_sprite;
			}
		}
		if (keyboard_check_pressed(Obj_Control_Definitions.lunge))
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


	// POINT THE SWORD IF IT EXISTS
	if (keyboard_check(Obj_Control_Definitions.point_up) && keyboard_check(Obj_Control_Definitions.point_down))
	{
		//DO NOTHING
	}
	else if (keyboard_check(Obj_Control_Definitions.point_left) && keyboard_check(Obj_Control_Definitions.point_right))
	{
		//DO NOTHING
	}
	else if (keyboard_check(Obj_Control_Definitions.point_up) && keyboard_check(Obj_Control_Definitions.point_left))
	{
		if (instance_exists(Obj_Sword))
			{
				if (Obj_Sword.attack == false)
				{
					Obj_Sword.sprite_index = Obj_Sword.up_left_sprite;
					Obj_Sword.mask_index = Spr_No_Mask;
					Obj_Sword.attack = true;
				}
			}
	}
	else if (keyboard_check(Obj_Control_Definitions.point_up) && keyboard_check(Obj_Control_Definitions.point_right))
	{
		if (instance_exists(Obj_Sword))
			{
				if (Obj_Sword.attack == false)
				{
					Obj_Sword.sprite_index = Obj_Sword.up_right_sprite;
					Obj_Sword.mask_index = Spr_No_Mask;
					Obj_Sword.attack = true;
				}
			}
	}
	else if (keyboard_check(Obj_Control_Definitions.point_down) && keyboard_check(Obj_Control_Definitions.point_left))
	{
		if (instance_exists(Obj_Sword))
			{
				if (Obj_Sword.attack == false)
				{
					Obj_Sword.sprite_index = Obj_Sword.down_left_sprite;
					Obj_Sword.mask_index = Spr_No_Mask;
					Obj_Sword.attack = true;
				}
			}
	}
	else if (keyboard_check(Obj_Control_Definitions.point_down) && keyboard_check(Obj_Control_Definitions.point_right))
	{
		if (instance_exists(Obj_Sword))
			{
				if (Obj_Sword.attack == false)
				{
					Obj_Sword.sprite_index = Obj_Sword.down_right_sprite;
					Obj_Sword.mask_index = Spr_No_Mask;
					Obj_Sword.attack = true;
				}
			}
	}
	else if(keyboard_check(Obj_Control_Definitions.point_up))
	{
		if (instance_exists(Obj_Sword))
			{
				if (Obj_Sword.attack == false)
				{
					Obj_Sword.sprite_index = Obj_Sword.up_sprite;
					Obj_Sword.mask_index = Spr_No_Mask;
					Obj_Sword.attack = true;
				}
			}
	}
	else if(keyboard_check(Obj_Control_Definitions.point_down))
	{
		if (instance_exists(Obj_Sword))
			{
				if (Obj_Sword.attack == false)
				{
					Obj_Sword.sprite_index = Obj_Sword.down_sprite;
					Obj_Sword.mask_index = Spr_No_Mask;
					Obj_Sword.attack = true;
				}
			}
	}
	else if(keyboard_check( Obj_Control_Definitions.point_left))
	{
		if (instance_exists(Obj_Sword))
			{
				if (Obj_Sword.attack == false)
				{
					Obj_Sword.sprite_index = Obj_Sword.left_sprite;
					Obj_Sword.mask_index = Spr_No_Mask;
					Obj_Sword.attack = true;
				}
			}
	}
	else if(keyboard_check(Obj_Control_Definitions.point_right))
	{
		if (instance_exists(Obj_Sword))
			{
				if (Obj_Sword.attack == false)
				{
					Obj_Sword.sprite_index = Obj_Sword.right_sprite;
					Obj_Sword.mask_index = Spr_No_Mask;
					Obj_Sword.attack = true;
				}
			}
	}
			
		// QUIT GAME
	switch(keyboard_key)
	{
		case Obj_Control_Definitions.escape: 
			control = false;
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

if (hit_points <= 5)
{
	injured = true;
	sprite_index = Spr_Player_Hurt;
}

if (hit_points <= 0)
{
	alive = false;
	sprite_index = Spr_Player_Dead;
}