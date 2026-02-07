// obj_answer_button - LEFT PRESSED EVENT (Mouse Event -> Left Pressed)

if (!instance_exists(controller)) exit;
if (controller.answered) exit; // Already answered
if (!hover) exit;

// Check if answer is correct
var correct_index = controller.questions[controller.current_question].correct;

if (answer_index == correct_index) {
    is_correct = true;
    controller.score++;
} else {
    is_wrong = true;
    
    // Also highlight the correct answer
    with (obj_answer_button) {
        if (answer_index == correct_index) {
            is_correct = true;
        }
    }
}

controller.answered = true;


