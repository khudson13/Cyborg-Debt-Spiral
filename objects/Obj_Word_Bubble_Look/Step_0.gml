switch (keyboard_key)
{
	case Obj_Control_Definitions.escape:
		io_clear();
		instance_create_layer(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), "UI_Windows", Obj_Inventory_window);
		Obj_Inventory_window.selected_index = selected_index;
		instance_destroy(self);
}