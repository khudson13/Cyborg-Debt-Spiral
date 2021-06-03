image_xscale = 4.5;
image_yscale = (1.4 + (Obj_Player.slots_filled * 0.2));
var display_y = y; // Start drawing at upper left
var display_x = x + 25;

// Header and money
draw_set_color(c_yellow);
draw_text(display_x + 55, display_y + display_height,"**INVENTORY**");
display_y += display_height * 2;
draw_set_color(c_white);
draw_text(display_x, display_y + display_height,"Money - $" + string(Obj_Player.money));
display_y += (display_height * 2);

// Draw the inventory list, omitting "nothing" and coloring
// the selected item red. Also draw submenus to right of
// inventory list when an item is accessed (second nested 'if' statement).
// Do not omit nothing if that's all there is.
for (var i = 0; i == 0 || i < Obj_Player.slots_filled; ++i;)
{
	if (selected_index == i)
	{
		draw_set_color(c_red);
	}
	else 
	{
		draw_set_color(c_white);
	}
	draw_text(display_x, display_y + display_height,Obj_Items_Master.ItemsMaster[inventory[i][0]][itemstats.name]);
	// Output item quantity
	draw_text(display_x + 220, display_y + display_height,inventory[i][1]);
	
	// Display sub-menu for selected item
	if (access == i)
	{
		var sub_y = display_y;
		var menu_depth = Obj_Items_Master.ItemsMaster[inventory[selected_index][0]][itemstats.menu][0];
		draw_sprite_ext(Spr_Menu_Frame, 0, display_x + 260, sub_y + 10, 1, 1, 0, c_white, 1);
		for (var ii = 1; ii <= menu_depth; ++ii;)
		{
			if (selected_subindex == ii)
			{
				draw_set_color(c_red);
			}
			else 
			{
				draw_set_color(c_white);
			}
			draw_text(display_x + 270, sub_y + display_height,Obj_Items_Master.ItemsMaster[inventory[selected_index][0]][itemstats.menu][ii]);
			sub_y += display_height;
		}
		if (subaccess != -1)
		{
			if (Obj_Items_Master.ItemsMaster[inventory[selected_index][0]][itemstats.menu][subaccess] == "look")
			{
				draw_text(display_x + 400, sub_y + display_height,Obj_Items_Master.ItemsMaster[inventory[selected_index][0]][itemstats.description]);
			}
		}
	}
	display_y += display_height;
}