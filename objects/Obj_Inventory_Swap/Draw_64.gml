
image_xscale = 5;
var display_y = 0; // Start drawing at upper left
var display_x = 60;


// Set iterator value to control display loop based on largest inventory
if (Obj_Player.slots_filled >= accessed_instance.slots_filled)
{
	var iteratorLimit = Obj_Player.slots_filled;
	image_yscale = (1.35 + (Obj_Player.slots_filled * 0.27));
}
else{
	var iteratorLimit = accessed_instance.slots_filled;
	image_yscale = (1.35 + (accessed_instance.slots_filled * 0.27));
}


if (insufficient_funds == true)
{
	draw_text(display_x + 125, display_y + display_height, "***INSUFFICIENT FUNDS FOR PURCHASE***");
	display_y += display_height;
	draw_text(display_x + 150, display_y + display_height, "***PRESS ESCAPE***");
}

else{
	// HEADER
	draw_set_color(c_yellow);
	draw_text(display_x + 150, display_y + display_height, "***TRADE***");
	display_y += display_height;
	if (commerce == true)
	{
		image_xscale += 1;
		draw_text(display_x, display_y + display_height, "$" + string(Obj_Player.money));
		display_y += display_height * 2;
	}

	// Output both inventories with selector position
	if (Obj_Player.slots_filled == 0)
	{
		draw_set_color(c_yellow);
		draw_text(display_x, display_y + display_height, "empty");
	}
	if (accessed_instance.slots_filled == 0)
	{
		draw_set_color(c_yellow);
		draw_text(display_x + 275, display_y + display_height, "empty");
	}
	for (var i = 0; i < iteratorLimit; ++i)
	{
		// PLAYER INVENTORY
		draw_set_color(c_white);
		if (selected_index == i && column == 1){
			draw_set_color(c_red);}
		if (i < Obj_Player.slots_filled){
			draw_text(display_x, display_y + display_height, Obj_Items_Master.ItemsMaster[Obj_Player.inventory[i][0]][itemstats.name]);
				draw_text(display_x + 100, display_y + display_height, Obj_Player.inventory[i][1]);
				if (commerce == true){
					draw_text(display_x + 125, display_y + display_height, "$" + string(Obj_Items_Master.ItemsMaster[Obj_Player.inventory[i][0]][itemstats.worth]));}}
	
		// OTHER INVENTORY
		draw_set_color(c_white);
		if (selected_index == i && column == 2){
			draw_set_color(c_red);}
		if (i < accessed_instance.slots_filled){
			draw_text(display_x + 275, display_y + display_height, Obj_Items_Master.ItemsMaster[accessed_instance.inventory[i][0]][itemstats.name]);
				draw_text(display_x + 415, display_y + display_height, accessed_instance.inventory[i][1]);
				if (commerce == true){
					draw_text(display_x + 425, display_y + display_height, "$" + string(Obj_Items_Master.ItemsMaster[accessed_instance.inventory[i][0]][itemstats.worth]));}}
	
		display_y += display_height;
	}
}