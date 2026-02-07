// obj_win_screen - STEP EVENT

// Play again
if (keyboard_check_pressed(vk_space)) {
    room_goto(rm_start);
}

// Quit game
if (keyboard_check_pressed(vk_escape)) {
    game_end();
}


