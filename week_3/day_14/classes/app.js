// var dymitri = {
// 	name: "Dymitri",
// 	noise: "Huff..."
// 	makeNoise: function (){
// 		console.log(this.name + "says: " + this.noise);
// 	}
// 	shout: function (){
// 		console.log(this.noise.toUpperCase());
// 	}
// };

// var chewie = {
// 	name: "Chewie",
// 	noise: "Woof"
// 	makeNoise: function (){
// 		//            @name                   @noise
// 		console.log(this.name + "says: " + this.noise);
// 	}
// 	shout: function (){
// 		//                @noise
// 		console.log(this.noise.toUpperCase());
// 	}
// };


// var dymitri = new Animal("Dymitri", "Huff...");
// dymitri.makeNoise();
// dymitri.shout();

// var chewie = new Animal("Chewie", "Woof");
// chewie.makeNoise();
// chewie.shout();

"use strict";

var Animal = require("./lib/animal.js")

var dymitri = new Animal("Dymitri", "Huff...");

dymitri.makeNoise();

dymitri.shout();

var chewie = new Animal("Chewie", "Woof");

chewie.makeNoise();
chewie.shout();
