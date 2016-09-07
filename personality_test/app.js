"use strict";

var read = require("read");


var questionStrings = [
	 "Do you find it difficult to introduce yourself to other people?",
	 "Do you initiate conversations with other people often?",
	 "Do you feel superior to other people?",
	 "Do you keep your work spaces tidy?",
	 "Do you enjoy being the center of attention?",
	 "Do you pick a piece of food and then put it back?",
	 "Did you lie in the personality test?"
// ];

// 	for (var i = 0; i <questionStrings.length, i += 1){
// 		var options = {prompt: questionStrings[i] };
	}

var i = 0;

var options = {prompt: `Question #${i + 1}: ${questionStrings[i]}` Recorded`}

var options = {
	prompt: "Do you find it difficult to introduce yourself to other people?"
};

function theCallbackFunction (theError, theAnswer){
	console.log("");
	console.log("ANSWER #1 RECORDED");
	console.log(`Answer: ${theAnswer}`);

var options2 = {
	prompt = "Do you initiate conversations with other people often?";
};

}

function callbackNumberTwo (theErrorTwo, theAnswerTwo){
	console.log("");
	console.log("ANSWER #2 RECORDED");
	console.log(`Answer: ${theAnswerTwo}`);

var options3 = {
	prompt: "Do you feel superior to other people?"
};

function callbackNumberThree (theErrorThree, theAnswerThree){
	console.log("");
	console.log("ANSWER #2 RECORDED");
	console.log(`Answer: ${theAnswerThree}`);

var options4 = {
	prompt: "Do you keep your work spaces tidy?"
};


function callbackNumberFour (theErrorFour, theAnswerFour){
	console.log("");
	console.log("ANSWER #2 RECORDED");
	console.log(`Answer: ${theAnswerFour}`);

}

console.log("");
read(options4, callbackNumberFour);
}

console.log("");
read(options3, callbackNumberThree);
}
console.log("");
read(options2, callbackNumberTwo);
}
console.log("");
read(options, callbackNumberFour);
}




read(options, callbackNumberTwo);
read(options, theCallbackFunction);

console.log("");
console.log("THIS IS THE LAST LINE OF THE PROGRAM");

