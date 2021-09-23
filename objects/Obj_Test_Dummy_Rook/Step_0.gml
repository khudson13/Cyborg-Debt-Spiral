if (alive == true)
{
	if (charging == true)
	{
		prevX = x;
		prevY = y;
		
		if (targetX > x)
		{
			x += 5;
		}
		else if (targetY > y)
		{
			y += 5;
		}
		else if (targetX < x)
		{
			x -= 5;
		}
		else if (targetY < y)
		{
			y -= 5;
		}
		
		if (place_meeting(x, y, Obj_Player))
		{
			Obj_Player.hit_points -= 5;
			charging = false;
		}
		
		if (moving_direction == "up")
		{
			if (y <= targetY)
			{
				charging = false;
			}
		}
		else if (moving_direction == "down")
		{
			if (y >= targetY)
			{
				charging = false;
			}
		}
		else if (moving_direction == "left")
		{
			if (x <= targetX)
			{
				charging = false;
			}
		}
		else if (moving_direction == "right")
		{
			if (x >= targetX)
			{
				charging = false;
			}
		}
		
		if (prevX == x && prevY == y)
		{
			charging = false;
			path_end();
		}
	}
	
	// TRY TO TARGET PLAYER
	else
	{
		if (Obj_Player.x >= (x - 20) && Obj_Player.x <= (x + 20))
		{
			if (Obj_Player.y > y)
			{
				charging = true;
				targetX = x;
				targetY = Obj_Player.y + 100;
				moving_direction = "down";
			}
			else
			{
				charging = true;
				targetX = x;
				targetY = Obj_Player.y - 100;
				moving_direction = "up";
			}
		}
		else if (Obj_Player.y >= (y - 20) && Obj_Player.y <= (y + 20))
		{
			if (Obj_Player.x > x)
			{
				charging = true;
				targetX = Obj_Player.x + 100;
				targetY = y;
				moving_direction = "right";
			}
			else
			{
				charging = true;
				targetX = Obj_Player.x - 100;
				targetY = y;
				moving_direction = "left";
			}
		}
	}
}

// IF DEAD
else
{
	path_end();
	rotting = true;
}

if (rotting == true)
{
	rot -= 1;
	if (rot <= 0)
	{
		instance_destroy(self);
	}
}