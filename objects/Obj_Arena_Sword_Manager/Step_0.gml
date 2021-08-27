if (Obj_Player.control == true)
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
			sword.y -= 2;
			sword.x -= 2;
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
			sword.y -= 2;
			sword.x += 2;
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
			sword.y += 2;
			sword.x -= 2;
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
			sword.y += 2;
			sword.x += 2;
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
			sword.y -= 4; 
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
			sword.y += 4;
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
			sword.x -= 4;
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
			sword.x += 4;
		}
	}
}