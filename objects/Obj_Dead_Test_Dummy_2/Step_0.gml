if (count < 100)
{
	if (count <= 20)
	{
		x += 2;
		y -= 1;
	}
	else if (count <= 25)
	{
		y += 1;
	}
	
	++count;
}
else
{
	instance_destroy(self);
}