// Write your Pizza Builder JavaScript in this file.


$(document).ready(function(){
	$(".btn-pepperonni").on("click", function(){
		$(".pep").toggle();
		$(".btn-pepperonni").toggleClass("active")
	});
	
		$(".pep").toggle()
		$(".btn-pepperonni").toggleClass("active")

	


	$(".btn-mushrooms").on("click", function(){
		$(".mushroom").toggle();
		$(".btn-mushrooms").toggleClass("active")
	});
		
		$(".mushroom").toggle()
		$(".btn-mushrooms").toggleClass("active")

	


	$(".btn-green-peppers").on("click", function(){
		$(".green-pepper").toggle();
		$(".btn-green-peppers").toggleClass("active")
	});

		$(".green-pepper").toggle()
		$(".btn-green-peppers").toggleClass("active")
	
	// $(".sauce-white").hide()
	

	$(".sauce").toggleClass("sauce-white")
	$(".btn-sauce").toggleClass("active")

	$(".btn-sauce").on("click", function(){
	$(".sauce").toggleClass("sauce-white")
	$(".btn-sauce").toggleClass("active")
	});


	

	$(".crust").toggleClass("crust-gluten-free")
	$(".btn-crust").toggleClass("active")

	$(".btn-crust").on("click", function(){
	$(".crust").toggleClass("crust-gluten-free")
	$(".btn-crust").toggleClass("active")


	});




		





});