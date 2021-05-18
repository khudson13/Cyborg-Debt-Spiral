var display_y = 0; // Start drawing at upper left

// Header and money
draw_set_color(c_yellow);
draw_text(0,display_y + display_height,"**Recyclable Trash**");
display_y += display_height;
draw_set_color(c_white);
draw_text(0,display_y + display_height,"Money - $" + string(Obj_Player.money));
display_y += (display_height * 2);

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
	draw_text(0,display_y + display_height,Obj_Items_Master.ItemsMaster[inventory[i][0]][itemstats.name]);
	draw_text(150,display_y + display_height,inventory[i][1]);  // Output item quantity, spacing needs to bemore procedural
	display_y += display_height;
}

