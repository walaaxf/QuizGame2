// obj_answer_button - DRAW EVENT

if (!instance_exists(controller)) exit;

// Check if mouse is hovering
var mx = mouse_x;
var my = mouse_y;

hover = point_in_rectangle(mx, my, 
    x - button_width/2, y - button_height/2,
    x + button_width/2, y + button_height/2);

// Determine button color
var button_color = c_white;

if (controller.answered) {
    if (is_correct) {
        button_color = c_lime; // Green for correct
    } else if (is_wrong) {
        button_color = c_red; // Red for wrong
    }
} else if (hover) {
    button_color = c_ltgray;
}

// Draw button background
draw_set_color(button_color);
draw_rectangle(x - button_width/2, y - button_height/2,
               x + button_width/2, y + button_height/2, false);

// Draw button border
draw_set_color(c_black);
draw_rectangle(x - button_width/2, y - button_height/2,
               x + button_width/2, y + button_height/2, true);

// Draw answer text
if (controller.current_question < controller.total_questions) {
    var answer_text = controller.questions[controller.current_question].answers[answer_index];
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_black);
    draw_text(x, y, answer_text);
}

// Reset drawing settings
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);


