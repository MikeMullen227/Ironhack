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


function showArtist(response){

	var artistArray = response.artists.items;
	
	console.log(artistArray)
	 // $(".js-artist-list").empty();
	artistArray.forEach(function(theArtist){
		if (theArtist.images[0]){

		var html = `
		<li>
			<h2> ${theArtist.name} </h2>
			<img class="js-confusion" data-lost="${theArtist.id}" src="${theArtist.images[0].url}">
			
		</li>
		<li>
			<button class="js-album-search" data-lost="${theArtist.id}" src="${theArtist.name}"> some text</button>
		</li>	
		<ul class="js-album-list"></ul>
		`;
		$('.js-artist-list').append(html);
		
		}
	 
		// if (theArtist.images[0].url) = null
	});

	$(".js-album-search").on("click", albumSearch);

	function albumSearch(theEvent){
		var artistId = $(theEvent.currentTarget).data("lost");


$.ajax({
	type: "Get",
	url: `https://api.spotify.com/v1/artists/${artistId}/albums`,
	success: showAlbum,
	error: handleError

});

}
		

}

function showAlbum(response){
	var albumsResults = response.items;
	console.log(albumsResults);


	albumsResults.forEach(function(theAlbum){
		if (theAlbum.images[0]){
			var albumHtml = `
			<li>
				<h2> ${theAlbum.name} </h2>
				<img src=${theAlbum.images[0].url}
			</li>
		`;
		$('.js-album-list').append(albumHtml);
		
		}
		});
	}



function handleError(error){
	console.log("Error!");
	console.log(error.responseText);
}