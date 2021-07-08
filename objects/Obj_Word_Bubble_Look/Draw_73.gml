var display_y = y + Ymod;
var display_x = x + Xmod;

draw_set_color(c_yellow);
draw_text(display_x, display_y, content);
display_y += ((display_height) + (display_height * lines_multiple));
draw_text(display_x, display_y, "Press Escape");