image_xscale = 4;
image_yscale = (1.35 + ((options_count * 0.27) + (response_scale * 0.27)));
var display_y = 0; // Start drawing at upper left
var display_x = 50;

// Dialogue selections show red, with responses to the right
draw_set_color(c_white);
draw_text(display_x ,display_y + display_height, talking_to);
display_y += display_height * 2;
draw_set_color(c_yellow);
draw_text(display_x, display_y + display_height, response);
display_y += response_height;
for (var i = 0; i == 0 || i < options_count ; ++i;)
{
	if (selected_index == i)
	{ 
		draw_set_color(c_red);
	}
	else 
	{
		draw_set_color(c_white);
	}
	draw_text(display_x, display_y + display_height, dialogue_options[i]);
	display_y += display_height;
}
