if (alive == true)
{
	if (leaping == true)
	{
		prevX = x;
		prevY = y;
		
		if (Obj_Player.control == true || Obj_Player.lunging == true)
		{
			path = path_add();
			mp_grid_add_instances(path, Obj_Impassable, true);
			mp_grid_path(Obj_Systems_Control.grid, path, x, y, goX, goY, true);
			path_start(path, 5, path_action_continue, 0);
		}
		
		if (place_meeting(x, y, Obj_Player))
		{
			leaping = false;
			alarm[0] = 70;
			path_end();
		}

		leap_count -= 1
		if (leap_count == 0)
		{
			leaping = false;
			alarm[0] = 70;
			path_end();
		}
	}
}
else
{
	path_end();
	instance_destroy(weapon);
	dummy_Death(x, y);
	instance_destroy(self);
}