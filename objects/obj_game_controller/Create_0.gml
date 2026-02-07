// obj_game_controller - CREATE EVENT

// Initialize game variables
current_question = 0;
score = 0;
total_questions = 0;
answered = false;

// Define your questions here
questions[0] = {
    question: "What is the capital of France?",
    answers: ["London", "Paris", "Berlin", "Madrid"],
    correct: 1
};

questions[1] = {
    question: "What is 2 + 2?",
    answers: ["3", "4", "5", "6"],
    correct: 1
};

questions[2] = {
    question: "Which planet is known as the Red Planet?",
    answers: ["Venus", "Jupiter", "Mars", "Saturn"],
    correct: 2
};

questions[3] = {
    question: "What is the largest ocean on Earth?",
    answers: ["Atlantic", "Indian", "Arctic", "Pacific"],
    correct: 3
};

questions[4] = {
    question: "Who painted the Mona Lisa?",
    answers: ["Van Gogh", "Picasso", "Da Vinci", "Monet"],
    correct: 2
};

total_questions = array_length(questions);

// Create answer buttons
button_y_start = 300;
button_spacing = 80;

for (var i = 0; i < 4; i++) {
    var btn = instance_create_depth(400, button_y_start + (i * button_spacing), -10, obj_answer_button);
    btn.answer_index = i;
    btn.controller = id;
}


