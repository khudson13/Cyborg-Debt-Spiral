if (leaping == true)
{
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
	}
}