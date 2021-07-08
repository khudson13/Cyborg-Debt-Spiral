/* This word bubble is specific to the look function in Obj_Inventory_Window.
For some reason everything breaks when inventory coexists with its created
word bubble. This version has returns the user to the inventory window. */

x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);
display_height = 17;
depth = 0;

image_yscale = 1.5;
image_xscale = 2.5;
Ymod = 10;
Xmod = 15;

content = "";
lines_multiple = 1; // how many lines in message
selected_index = 0;