// OPTIONAL: Create obj_start_screen for title display in rm_start

// obj_start_screen - DRAW EVENT

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Title
draw_set_color(c_yellow);
draw_text_transformed(400, 150, "QUIZ GAME", 3, 3, 0);

// Subtitle
draw_set_color(c_white);
draw_text(400, 230, "Test your knowledge!");

// Instructions
draw_text(400, 450, "Click the button to begin");

// Reset drawing settings
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);


