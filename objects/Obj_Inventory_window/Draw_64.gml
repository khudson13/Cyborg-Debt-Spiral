/// @description Insert description here
// You can write your code in this editor

var display_y = 0; // Start drawing at upper left

// Header and money
draw_set_color(c_yellow);
draw_text(0,display_y + display_height,"**INVENTORY**");
display_y += display_height;
draw_set_color(c_white);
draw_text(0,display_y + display_height,"Money - $" + string(Obj_Player.money));
display_y += (display_height * 2);

// Draw the inventory list, omitting "nothing" and coloring
// the selected item red. Also draw submenus to right of
// inventory list when an item is accessed (second nested 'if' statement).
// Do not omit nothing if that's all there is.
for (var i = 0; i == 0 || i < Obj_Player.slots_filled; ++i;){
	if (selected_index == i){ draw_set_color(c_red)};
	else {draw_set_color(c_white)};
	draw_text(0,display_y + display_height,Obj_Items_Master.ItemsMaster[inventory[i][0]][itemstats.name]);
	draw_text(150,display_y + display_height,inventory[i][1]);  // Output item quantity, spacing needs to bemore procedural
	if (access == i){
		var sub_y = display_y;
		var menu_depth = Obj_Items_Master.ItemsMaster[inventory[selected_index][0]][itemstats.menu][0];
		for (var ii = 1; ii <= menu_depth; ++ii;){
			if (selected_subindex == ii){ draw_set_color(c_red)};
			else {draw_set_color(c_white)};
			draw_text(200,sub_y + display_height,Obj_Items_Master.ItemsMaster[inventory[selected_index][0]][itemstats.menu][ii]);
			sub_y += display_height;
		}
	if (subaccess != -1){
		if (Obj_Items_Master.ItemsMaster[inventory[selected_index][0]][itemstats.menu][subaccess] == "look"){
			draw_text(400,sub_y + display_height,Obj_Items_Master.ItemsMaster[inventory[selected_index][0]][itemstats.description]);
		}
	}
	}
	display_y += display_height;
}
