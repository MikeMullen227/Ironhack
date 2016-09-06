
"use strict";


class Animal {

	constructor(name, noise) {
		this.name = name;
		this.noise = noise;
	}


makeNoise () {
	console.log(`${this.name} says: ${this.noise}`);
}

shout (){
	console.log(this.noise.toUpperCase());
};
}


module.exports = Animal;


// function Animal () {
// this.name = name
// this.noise = noise

// }


// Animal.prototype.makeNoise: function (){

// 	console.log(this.name + " says: " + this.noise);

// }
// Animal.prototype.shout: function(){

// console.log(this.noise.toUpperCase());
// }