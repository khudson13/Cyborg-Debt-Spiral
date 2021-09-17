if (leaping == true)
{
	path = path_add();
	mp_grid_add_instances(path, Obj_Impassable, true);
	mp_grid_path(Obj_Systems_Control.grid, path, x, y, goX, goY, true);
	path_start(path, 5, path_action_continue, 0);

	leap_count -= 1
	if (leap_count == 0)
	{
		leaping = false;
		alarm[0] = 100;
		path_end();
	}
	
	/*
	if (leapX > 0)
	{
		prevX = x;
		x += 10;
		leapX -= 1;
	}
	else if (leapX < 0)
	{
		prevX = x;
		x -= 10;
		leapX += 1;
	}
	if (leapY > 0)
	{
		prevY = y;
		y += 10;
		leapY -= 1;
	}
	else if (leapY < 0)
	{
		prevY = y;
		y -= 10;
		leapY += 1;
	}
	
	
	if (leapX == 0 && leapY == 0)
	{
		leaping = false;
		alarm[0] = 100;
	}*/
}