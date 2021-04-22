
var display_y = Camera_Center_Y - 30;

// Basic text output - Furniture description
draw_set_color(c_white);
draw_text(Camera_Center_X - 50, display_y - 70, name);
display_y += display_height;
draw_text(Camera_Center_X - 50, display_y - 70, description);
if (furniture.hasInventory == true)
{
	display_y += display_height;
	draw_text(Camera_Center_X -50, display_y - 70, "Press 'e' to examine inventory");
}
display_y += display_height;
if (furniture.hasOptions == true)
{
	for (var i =0; i < furniture.options_number; ++i)
	{
		draw_text(Camera_Center_X - 50, display_y - 70, "Press 'e' to:");
		display_y += display_height;
		if (selected_option == i)
		{
			draw_set_color(c_yellow);
		}
		else
		{
			draw_set_color(c_white);
		}
		draw_text(Camera_Center_X - 50, display_y - 70, furniture.options_list[i]);
		display_y += display_height;
	}
}
if (furniture.object_index == Obj_Door_A || furniture.object_index == Obj_VertDoor_A)
{
	if (furniture.passable == false)
	{
		draw_text(Camera_Center_X - 50, display_y - 70, "This door is locked.");
		display_y += display_height;
	}
}
draw_text(Camera_Center_X - 50, display_y - 70, "Press Escape to Exit");