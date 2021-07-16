image_xscale = 1.7;
image_yscale = 1.7;

draw_set_color(c_yellow);
display_y = y - 30;
for (var i = 0; i < menu_items; ++i;)
{
	if (selected_index == i)
	{
		draw_set_color(c_red);
	}
	else 
	{
		draw_set_color(c_white);
	}
	draw_text(x + 10, display_y + display_height, menu_array[i]);
	display_y += display_height;
}