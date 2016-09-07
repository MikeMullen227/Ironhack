"use strict";

var read = require('read');

var Question = require("./lib/question.js")
var Quiz = require("./lib/quiz.js")

 var question1 = new Question(




var questions = new Question

var theQuiz = new Quiz();

theQuiz.addQuestion( question1 );
theQuiz.addQuestion( question2 );
theQuiz.addQuestion( question3 );
theQuiz.addQuestion( question4 );
theQuiz.addQuestion( question5 );

function handleInput (theError, input) {
	theQuiz.answer(input);

	if (theQuiz.isGameOver()) {
		console.log("Game Over");
	}
	else {
		options.prompt = theQuiz.getCurrentQuestion();
		read(options, handleInput);
	}

}

var options = { prompt: theQuiz.getCurrentQuestion()};

read(options, handleInput);




 	)
 	var quiz = [{
 		question: "How many miles away is the sun from the earth?",	
 		choices: ["93,000,000 miles", "50,000,000 miles", "77,000,000 miles",]
 		answer: 0
 	},  {
 		question: "How many planets are in the solar system?",
 		choices: ["7", "8", "9"]
 		answer: 1
	},  {
		question: "What is the name of the biggest asteroid in our solar system?",
		choices: ["Io,", "Vesta", "Ceres"]
		answer: 2
	}
}];

var currentQuestion = 0;

var choices= quiz[currentQuestion].choices,

var quizGame = function() {
	for (var i = 0, i < choices.length, i++) {


	}




 	]
};

var question1 = new Question();



options = {
    prompt: question
}


read(options,displayName)

	function displayName (err, name) {
		console.log ("Your name is: " + name)
	}