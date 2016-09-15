console.log("We are GO!!!");

$(document).ready(function(){
	$(".js-fetch-characters").on("click", fetchCharacters);
	$(".js-add-yoda").on("click", addYoda);
	$(".js-add-new-character").on("click", addNewCharacter);


}); 



function addNewCharacter (theEvent){
	theEvent.preventDefault();
	
	console.log("Add New Character Click")

	var add_character =  {

	weapon: $(".js-weapon").val(),
	occupation: $(".js-occupation").val(),
	name: $(".js-name").val()

		
	}


	// console.log(`Weapon: ${weapon}, Occupation: ${occupation}, Name: ${name}`);


	$.ajax({

		type: "Post",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: add_character,
		success: updateList,
		error: handleError
	});

	// Ajax code here
}



function fetchCharacters(){

	console.log("Fetch Characters Click");

	$.ajax({

		type: "GET",
		url: "https://ironhack-characters.herokuapp.com/characters",
		success: showCharacters,
		error: handleError
	});



	function showCharacters (response){
		
		var charactersArray = response;

		charactersArray.forEach(function (theCharacter) {
			var html = `
			<li> 
				<h2> ${theCharacter.name} </h2>
			</li>
			`;
			$('.js-character-list').append(html);
		});
		console.log("Success!");
		console.log(response);

	}



	// 	console.log("Success!");
	// 	console.log(response);
	// },
}



	function handleError (error){
		console.log("Error!");
		console.log(error.responseText);

	}	



function addYoda () {
	console.log("Add Yoda Click");
	var newCharacter = {
		name: "Yoda",
		occupation: "Jedi Master",
		weapon: "The Force"
	};

$.ajax({

	type: "Post",
	url: "https://ironhack-characters.herokuapp.com/characters",
	data: newCharacter,
	success: updateList,
	error: handleError
});


}


function updateList (){
	console.log("success")
}
