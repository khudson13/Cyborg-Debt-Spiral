/// @description Insert description here
// You can write your code in this editor

/*
Base this on the inventory window GUI. The primary list outputs the dialogue options array, from
which the player can make choices. The submenu is replaced with dialogue output which the player
cannot traverse, but can read. Output is stored in an array and displayed in the same manner as
above. The array is of limited size so that only so much is displayed at once.

Choosing some dialoge options should be able to modify or remove existing options or add new ones.
*/
var display_y = 0; // Start drawing at upper left

// Draw the inventory list, omitting "nothing" and coloring
// the selected item red. Also draw submenus to right of
// inventory list when an item is accessed (second nested 'if' statement).
for (var i = 0; i == 0 || i < Obj_Player.slots_filled; ++i;){
	if (selected_index == i){ draw_set_color(c_red)};
	else {draw_set_color(c_white)};
	draw_text(0,display_y + display_height,dialogue_options[i]);
	if (access == i){
		draw_set_color(c_white);
		draw_text(200,display_y + display_height,responses[i]);
	}
	display_y += display_height;
}
