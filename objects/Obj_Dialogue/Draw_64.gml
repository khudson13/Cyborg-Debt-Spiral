
/*
Base this on the inventory window GUI. The primary list outputs the dialogue options array, from
which the player can make choices. Choices are passed to the NPC dialogue partner which returns responses.

Choosing some dialoge options can modify or remove existing options or add new ones.
*/
var display_y = 0; // Start drawing at upper left

// Dialogue selections show red, with responses to the right
draw_set_color(c_white);
draw_text(0,display_y + display_height * 2,talking_to);
display_y += display_height * 2;
draw_set_color(c_yellow);
draw_text(0,display_y + display_height, response);
display_y += display_height;
for (var i = 0; i == 0 || i < options_count ; ++i;){
	if (selected_index == i){ draw_set_color(c_red)};
	else {draw_set_color(c_white)};
	draw_text(0,display_y + display_height,dialogue_options[i]);
/*	if (access == i){
		draw_set_color(c_white);
		draw_text(200,display_y + display_height,response);
	}*/
	display_y += display_height;
}
