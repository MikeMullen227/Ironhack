"use strict";

class Quiz {
	constructor () {
		this.questions = [];
		this.currentIndex = 0;
	}
}


getCurrentQuestion () {
	var index = this.currentIndex;
	var currentQuestion = this.questions(index);
	return currentQuestion.question_text;
}

answer (input) {
	var index = this.currentIndex;
	var currentQuestion = this.questions(index);

	if (input.toLowerCase() === currentQuestion.answer.toLowerCase())
		console.log("Correct!");
		console.log("");

		this.currentIndex +=1;
		return true;
	}
	else {
		console.log("Incorrent. Try again.");
		console.log("");

		return false;
	}
}

isGameOver () {
	if (this.currentIndex >= this.questions.length) {
		return true;
	}
	else 
}