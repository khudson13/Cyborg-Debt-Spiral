/// @description Insert description here
// You can write your code in this editor

var display_y = 0;
for (var i = 0; i <= 9; ++i;){
	if (selected_index == i){ draw_set_color(c_red)};
	else {draw_set_color(c_white)};
	draw_text(0,display_y + display_height,Obj_Items_Master.ItemsMaster[inventory[i]][itemstats.name]);
	display_y += display_height;
}
