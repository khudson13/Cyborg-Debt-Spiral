depth = 0;
image_yscale = 1.5;
image_xscale = 3;

var display_y = y - 15; // Start drawing at upper left
var display_x = x + 15;

// Header and money
draw_set_color(c_yellow);
draw_text(display_x + 10, display_y + display_height, "**Recyclable Trash**");
display_y += display_height;
draw_set_color(c_white);
draw_text(display_x, display_y + display_height, "Money - $" + string(Obj_Player.money));
display_y += (display_height);

// Draw the trash list, coloring the selected item red.

for (var i = 0; i == 0 || i < slots_filled; ++i;)
{
	if (selected_index == i)
	{
		draw_set_color(c_red);
	}
	else 
	{
		draw_set_color(c_white);
	}
	draw_text(display_x, display_y + display_height, Obj_Items_Master.ItemsMaster[inventory[i][0]][itemstats.name]);
	image_yscale += 0.2
	// Output item quantity
	draw_text(display_x + 150, display_y + display_height, inventory[i][1]);
	display_y += display_height;
}