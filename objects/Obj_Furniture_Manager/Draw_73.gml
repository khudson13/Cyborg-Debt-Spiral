depth = 0;
image_xscale = 4;
image_yscale = 1.5;
var display_y = y + 10;
var display_x = x + 23;

// Basic text output - Furniture description
draw_set_font(Font_main);
draw_set_color(c_white);
draw_text(display_x, display_y, name);
display_y += display_height;
draw_text(display_x, display_y, description);
if (furniture.hasInventory == true)
{
	display_y += display_height;
	draw_text(display_x, display_y, "Press 'e' to examine inventory");
	image_yscale += 0.4;
}
display_y += display_height;
if (furniture.hasOptions == true)
{
	draw_text(display_x, display_y, "Press 'e' to:");
	display_y += display_height;
	image_yscale += 0.4;
	for (var i =0; i < furniture.options_number; ++i)
	{
		if (selected_option == i)
		{
			draw_set_color(c_yellow);
		}
		else
		{
			draw_set_color(c_white);
		}
		draw_text(display_x, display_y, furniture.options_list[i]);
		display_y += display_height;
		image_yscale += 0.4;
	}
}
if (furniture.object_index == Obj_Door_A || furniture.object_index == Obj_VertDoor_A)
{
	if (furniture.passable == false)
	{
		draw_text(display_x, display_y, "This door is locked.");
		display_y += display_height;
	}
}
draw_text(display_x, display_y, "Press Escape to Exit");