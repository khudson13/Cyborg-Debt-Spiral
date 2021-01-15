/// @description Insert description here
// You can write your code in this editor

var display_y = Camera_Center_Y - 30;

// Basic text output - Furniture description
draw_set_color(c_red);
draw_text(Camera_Center_X - 50, display_y - 70, name);
display_y += display_height;
draw_text(Camera_Center_X - 50, display_y - 70, description);
if (furniture.hasInventory == true){
	display_y += display_height;
	draw_text(Camera_Center_X -50, display_y -70, "Press 'e' to examine inventory");}
display_y += display_height;
draw_text(Camera_Center_X - 50, display_y - 70, "Press Escape to Exit");



if (furniture.hasOptions == true){
	
}