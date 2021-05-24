depth = 0;
image_xscale = 1.5;
image_yscale = 1;
image_yscale += totalCount * 0.25;

var display_y = Camera_Center_Y - 60;
var display_x = Camera_Center_X + 20; 
var menuCount = 0; // Menu item currently printing

// Top text
draw_set_color(c_yellow);
draw_text(display_x, display_y + display_height * 2, "Make a choice\nor press Esc");
display_y += display_height * 3;

// Output item collisions
if (itemCount > 0)
{
	draw_set_color(c_yellow);
	draw_text(display_x, display_y + display_height, "Get item:");
	display_y += display_height;
	for (var i = 0; i == 0 || i < itemCount ; ++i;)
	{
		if (selected_index == menuCount)
		{ 
			draw_set_color(c_red);
		}
		else 
		{
			draw_set_color(c_white);
		}
		draw_text(display_x, display_y + display_height, Obj_Items_Master.ItemsMaster[items[| i].ItemID][itemstats.name]);
		menuCount += 1;

		display_y += display_height;
	}
}

// Output npc collisions
if (npcCount > 0)
{
	draw_set_color(c_yellow);
	draw_text(display_x, display_y + display_height, "Talk to:");
	display_y += display_height;
	for (var i = 0; i == 0 || i < npcCount ; ++i;)
	{
		if (selected_index == menuCount)
		{
			draw_set_color(c_red);
		}
		else 
		{
			draw_set_color(c_white);
		}
		draw_text(display_x, display_y + display_height, npc[| i].NPC_name);
		menuCount += 1;

		display_y += display_height;
	}
}

// Output furniture collisions
if (furnitureCount > 0)
{
	draw_set_color(c_yellow);
	draw_text(display_x, display_y + display_height, "Access:");
	display_y += display_height;
	for (var i = 0; i == 0 || i < furnitureCount ; ++i;)
	{
		if (selected_index == menuCount)
		{
			draw_set_color(c_red);
		}
		else 
		{
			draw_set_color(c_white);
		}
		draw_text(display_x, display_y + display_height, furniture[| i].name);
		menuCount += 1;

		display_y += display_height;
	}
}
