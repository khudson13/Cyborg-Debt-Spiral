image_yscale = 1.5;
image_xscale = 2.5;

var display_y = y + 10;
var display_x = x + 15;

draw_set_color(c_yellow);
draw_text(display_x, display_y, content);
display_y += ((LINE_HEIGHT) + (LINE_HEIGHT * lines_multiple));
draw_text(display_x, display_y, "Press Escape");