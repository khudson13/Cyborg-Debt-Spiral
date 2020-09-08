/// @description Insert description here
// You can write your code in this editor

var display_y = 0;
for (var i = 0; i == 0 || i < Obj_Player.slots_filled; ++i;){
	if (selected_index == i){ draw_set_color(c_red)};
	else {draw_set_color(c_white)};
	draw_text(0,display_y + display_height,Obj_Items_Master.ItemsMaster[inventory[i]][itemstats.name]);
	if (access == i){
		var sub_y = display_y;
		var menu_depth = Obj_Items_Master.ItemsMaster[inventory[selected_index]][itemstats.menu][0];
		for (var ii = 1; ii <= menu_depth; ++ii;){
			if (selected_subindex == ii){ draw_set_color(c_red)};
			else {draw_set_color(c_white)};
			draw_text(200,sub_y + display_height,Obj_Items_Master.ItemsMaster[inventory[selected_index]][itemstats.menu][ii]);
			sub_y += display_height;
		}
		
	}
	display_y += display_height;
}
