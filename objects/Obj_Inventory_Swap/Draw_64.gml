/// @description Insert description here
// You can write your code in this editor

var display_y = 0;


// Set iterator value to control display loop based on largest inventory
if (Obj_Player.slots_filled >= accessed_instance.slots_filled){
	var iteratorLimit = Obj_Player.slots_filled;}
else{
	var iteratorLimit = accessed_instance.slots_filled;}

// HEADER
draw_set_color(c_yellow);
draw_text(150,display_y + display_height,"***TRADE***");
display_y += display_height;

// Output both inventories with selector position
for (var i = 0; i < iteratorLimit; ++i){
	// PLAYER INVENTORY
	draw_set_color(c_white);
	if (Obj_Player.slots_filled == 0){
		draw_set_color(c_yellow);
		draw_text(0,display_y + display_height,"empty");}
	if (selected_index == i && column == 1){
		draw_set_color(c_red);}
	if (i < Obj_Player.slots_filled){
		draw_text(0,display_y + display_height,Obj_Player.inventory[i].name);}
	
	// OTHER INVENTORY
	draw_set_color(c_white);
	if (accessed_instance.slots_filled == 0){
		draw_set_color(c_yellow);
		draw_text(300,display_y + display_height,"empty");}
	if (selected_index == i && column == 2){
		draw_set_color(c_red);}
	if (i < accessed_instance.slots_filled){
		draw_text(300,display_y + display_height,accessed_instance.inventory[i].name);}
	
	display_y += display_height;
}