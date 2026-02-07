// obj_game_controller - DRAW EVENT

// Set text alignment and font
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);

// Draw question counter
draw_text(400, 50, "Question " + string(current_question + 1) + " of " + string(total_questions));

// Draw score
draw_text(400, 80, "Score: " + string(score) + " / " + string(total_questions));

// Draw current question
if (current_question < total_questions) {
    draw_set_font(-1);
    draw_text_ext(400, 150, questions[current_question].question, 30, 700);
    
    // Draw answer options on buttons (handled by obj_answer_button)
}

// Draw feedback if answered
if (answered) {
    draw_set_color(c_yellow);
    draw_text(400, 250, "Press SPACE to continue...");
}

// Reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);


