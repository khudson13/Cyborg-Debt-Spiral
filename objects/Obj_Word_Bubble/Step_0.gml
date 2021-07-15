switch (keyboard_key)
{
	case Obj_Control_Definitions.escape:
		Obj_Player.control = true;
		if (Obj_Player.alive == false)
		{
			instance_create_layer(Obj_Player.x, Obj_Player.y, "UI_Windows", Obj_Endgame_Spiel);
		}
		io_clear();
		instance_destroy(self);
}