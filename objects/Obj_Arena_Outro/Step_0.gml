if (Obj_Player.alive == false)
{
	Obj_Player.control = false;
	fail = true;
}

else if (instance_exists(Obj_NPC) == false)
{
	Obj_Player.control = false;
	win = true;
}

if (win == true || fail == true)
{
	if (keyboard_key == vk_escape)
	{
		game_end();
	}
}