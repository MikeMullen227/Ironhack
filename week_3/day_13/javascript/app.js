
var countColors = require("./lib/count-colors.js");


var colorArray = ["indigo", "teal", "lilac", "periwinkle", "black", "baby blue", "teal"];


console.log( colorArray );


// p the_counting_machine.count_colors("indigo", color_array) == 1
console.log(countColors("indigo", colorArray) === 1);

console.log(countColors("periwinkle", colorArray) === 1);
console.log(countColors("teal", colorArray) === 2);

console.log(countColors("green", colorArray) === 0);
console.log(countColors("navy blue", colorArray) === 0);






var capsColors = colorArray.map(function (the_color){
	return theColor.toUpperCase();
});


console.log(capsColors);










// p color_array


// for (i=1; i <= 42; i += 1) {
// 	console.log(i);
// }


// var foods = ['pizza', 'cookies', 'bread'];
// foods.forEach(function (food) {
// 	console.log(food);
// });


// var foods = ['pizza', 'cookies', 'bread'];
// var capsFoods = foods.map(function (food){
// 	return food.toUpperCase();
// });

// console.log(capsFoods);


// var foods = ['pizza', 'cookies', 'bread'];
// var msg = foods.reduce(function (pre, food){
// 	return pre + 'AND' + food;
// });



// var foods = ['pizza', 'cookies', 'bread'];

// var best = foods.filter(function (food){
// 	return food !== 'bread'
// });

// console.log(best);
