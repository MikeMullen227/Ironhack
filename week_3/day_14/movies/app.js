"use strict";

var fs = require("fs");

fs.readFile("movies.txt", "utf8", function(theError, movieFileContents){
	if (theError === null) {


	var moviesArray = movieFileContents.split("\n");
	console.log(moviesArray);




	}


	else {
		console.log("Oh no! Error.")
		console.log(theError);

	}

});


var read = require("read");

var theOptions = {prompt: "What is your name?"}

function greetUser (theError, givenName) {
	console.log(`Hello, ${givenName}.`);
	var options2 = {prompt: "What is your date of birth?"}

	function displayBirthday (theError, birthDate) {
		console.log(`You were born: ${birthDate}`);

		

	}
	read(options2, displayBirthday);
}

// read(theOptions, greetUser);

	read(theOptions, greetUser);

	console.log("");
	console.log("");

// function after5Seconds() {
// 	console.log("5 seconds");

