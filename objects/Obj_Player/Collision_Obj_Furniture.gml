with other
{
	if (passable == false)
	{
		Obj_Player.x = Obj_Player.prevX;
		Obj_Player.y = Obj_Player.prevY;
	}
}

if (lunging == true)
{
	lunging = false;
	control = true;
}