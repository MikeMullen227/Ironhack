console.log("Liftoff!");

$(document).ready(function(){
	$(".js-look-for-artist").on("click", lookForArtist);
	
});


function lookForArtist(theEvent){
	theEvent.preventDefault();
	var search_term = $(".js-artist").val();
	 $(".js-artist-list").empty();


$.ajax({

	type: "Get",
	url: `https://api.spotify.com/v1/search?type=artist&query=${search_term}`,
	success: showArtist,
	error: handleError
});

}

function albumList(event){
	


	
$.ajax({
	type: "Get",
	url: `https://api.spotify.com/v1/search?type=artist&query=${search_term}`,
	success: showAlbum,
	error: handleError

});

}


function showAlbum(response){

}

function showArtist(response){

	var artistArray = response.artists.items;
	
	console.log(artistArray)
	 // $(".js-artist-list").empty();
	artistArray.forEach(function(theArtist, images){
		if (theArtist.images[0]){

		var html = `
		<li>
			<h2> ${theArtist.name} </h2>
		</li>
		<li>
			<img src="${theArtist.images[0].url}">
		</li>	
		`;
		$('.js-artist-list').append(html);
		
		}
	 
		// if (theArtist.images[0].url) = null
	});
		

	}



function handleError(error){
	console.log("Error!");
	console.log(error.responseText);
}