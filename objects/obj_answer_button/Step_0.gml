// obj_answer_button - STEP EVENT

if (!instance_exists(controller)) exit;

// Reset colors when moving to next question
if (!controller.answered) {
    is_correct = false;
    is_wrong = false;
}


