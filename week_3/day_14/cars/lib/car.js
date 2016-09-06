"use strict";

class Car {

	constructor(model, noise) {
		this.model = model;
		this.noise = noise;
		this.numberOfWheels = 4;
	}



carNoise (){
	console.log (`${this.model} makes the sound ${this.noise}`);
}


}

module.exports = Car;