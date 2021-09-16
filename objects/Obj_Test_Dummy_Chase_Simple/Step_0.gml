grid = mp_grid_create(0,0,room_width/64,room_height/64,64,64);
path = path_add();
mp_grid_add_instances(path, Obj_Impassable, true);
mp_grid_add_instances(path, Obj_Test_Dummy_Chase_Simple, true);
mp_grid_add_instances(path, Obj_Test_Dummy_Immobile, true);
mp_grid_path(grid, path, x, y, Obj_Player.x, Obj_Player.y, true);
path_start(path, 2, path_action_continue, 1);

/*
if (Obj_Player.x > x)
{
	prevX = x;
	x += 1;
}
if (Obj_Player.x < x)
{
	prevX = x;
	x -= 1;
}
if (Obj_Player.y > y)
{
	prevY = y;
	y += 1;
}
if (Obj_Player.y < y)
{
	prevY = y;
	y -= 1;
}