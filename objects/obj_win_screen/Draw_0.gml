// obj_win_screen - DRAW EVENT

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Title
draw_set_color(c_yellow);
draw_text_transformed(400, 150, "QUIZ COMPLETE!", 2, 2, 0);

// Score
draw_set_color(c_white);
var percentage = (global.final_score / global.total_questions) * 100;
draw_text_transformed(400, 250, "Your Score:", 1.5, 1.5, 0);
draw_text_transformed(400, 300, string(global.final_score) + " / " + string(global.total_questions), 2, 2, 0);
draw_text_transformed(400, 370, string(round(percentage)) + "%", 1.5, 1.5, 0);

// Performance message
var message = "";
if (percentage == 100) {
    message = "PERFECT! Outstanding!";
    draw_set_color(c_lime);
} else if (percentage >= 80) {
    message = "Great job!";
    draw_set_color(c_aqua);
} else if (percentage >= 60) {
    message = "Good effort!";
    draw_set_color(c_yellow);
} else {
    message = "Keep practicing!";
    draw_set_color(c_orange);
}

draw_text(400, 450, message);

// Instructions
draw_set_color(c_white);
draw_text(400, 520, "Press SPACE to play again");
draw_text(400, 550, "Press ESC to quit");

// Reset drawing settings
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);


