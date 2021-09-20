
if (Obj_Player.control == true)
{
	path = path_add();
	mp_grid_add_instances(path, Obj_Impassable, true);
	mp_grid_path(Obj_Systems_Control.grid, path, x, y, Obj_Player.x, Obj_Player.y, true);
	path_start(path, 2, path_action_continue, 0);
}
else
{
	path_end();
}

