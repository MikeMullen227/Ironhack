"use strict";

var read = require("read");

var options = {
	prompt: "do you find it difficult to introduce yourself to other people?"
};

function theCallbackFunction (theError, theAnswer){
	console.log("ANSWER RECORDED");
	console.log(theAnswer);
}


read(options, theCallbackFunction);

console.log("");
console.log("THIS IS THE LAST LINE OF THE PROGRAM");

