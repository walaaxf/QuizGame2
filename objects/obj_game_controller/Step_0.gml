// obj_game_controller - STEP EVENT

// After answering, press space to continue
if (answered && keyboard_check_pressed(vk_space)) {
    answered = false;
    current_question++;
    
    // Check if quiz is finished
    if (current_question >= total_questions) {
        global.final_score = score;
        global.total_questions = total_questions;
        room_goto(rm_win);
    }
}


