console.log("Lets Roll!");

$(document).ready(function(){
	$(".js-search-track").on("click", searchTrack);
	$(".btn-play").on("click", playAudio)

});

function searchTrack(theEvent) {
	theEvent.preventDefault();
	var search_term = $(".js-track").val();

	$.ajax({
		type: "Get",
		url: `https://api.spotify.com/v1/search?type=track&q=${search_term}`,
		success: showTrack,
		error: handleError
		



	});

}


function showTrack(response) {
	console.log(response)
	var track_array = response.tracks.items;

	var trackName = track_array[0].name;
	var artistName = track_array[0].artists[0].name;
	var albumImage = track_array[0].album.images[0].url;
	var playTrack = track_array[0].preview_url;
		
	$(".title").html(trackName);
	$(".author").html(artistName);		
	$(".new-cover").attr("src", albumImage);
	$(".player").attr("src", playTrack);	

}

	function playAudio(){

	$(".btn-play").toggleClass("playing");
		if ($(".btn-play").hasClass("playing")){
			$(".player").trigger("play");
		}
		else {
			$(".player").trigger("pause");
		}
	}


	 



function handleError() {

}