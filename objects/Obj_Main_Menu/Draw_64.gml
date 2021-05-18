// Just a simple main menu for now, more to come.

// Dialogue selections show red, with responses to the right
draw_set_color(c_yellow);
display_y = y;
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
	draw_text(x,display_y + display_height,menu_array[i]);
	display_y += display_height;
}