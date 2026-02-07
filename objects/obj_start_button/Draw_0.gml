// obj_start_button - DRAW EVENT

// Check if mouse is hovering
var mx = mouse_x;
var my = mouse_y;

hover = point_in_rectangle(mx, my, 
    x - button_width/2, y - button_height/2,
    x + button_width/2, y + button_height/2);

// Draw button background
if (hover) {
    draw_set_color(c_yellow);
} else {
    draw_set_color(c_white);
}

draw_rectangle(x - button_width/2, y - button_height/2,
               x + button_width/2, y + button_height/2, false);

// Draw button border
draw_set_color(c_black);
draw_rectangle(x - button_width/2, y - button_height/2,
               x + button_width/2, y + button_height/2, true);

// Draw button text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(x, y, button_text);

// Reset drawing settings
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);


