"use strict";

var Car = require("./lib/car.js")

var sportsCar = new Car("Porsche", "Vrooom");

sportsCar.carNoise();

var truck = new Car("Dodge Ram", "Chuuuug");

truck.carNoise();