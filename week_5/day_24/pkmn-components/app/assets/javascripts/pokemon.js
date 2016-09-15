// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

PokemonApp.PokemonComponent = class {
	constructor (pokemonUri) {
		//@id = PokemonApp.id_from_uri( pokemon_uri ) -----in ruby
		this.id = PokemonApp.idFromUri(pokemonUri);
	}
	render () {
		console.log(`PokemonComponent rendering pokemon #${this.id}`);

		$.ajax({
			type: "GET",
			url: `/api/v1/pokemon/${this.id}`,
			success: PokemonApp.showPokemonModal,
			error: PokemonApp.handleError
		});
	}
};

PokemonApp.showPokemonModal = function (result) {
	console.log("Pokemon Info:")
	console.log(result);

	$(".js-poke-name").html(result.name);
	$(".js-poke-number").html(result.number);
	$(".js-poke-height").html(result.height);
	$(".js-poke-weight").html(result.weight);
	$(".js-poke-hp").html(result.hp);
	$(".js-poke-attack").html(result.attack);
	$(".js-poke-defense").html(result.defense);
	$(".js-poke-sp_atk").html(result.sp_atk);
	$(".js-poke-sp_def").html(result.sp_def);
	$(".js-poke-speed").html(result.speed);
	$(".js-poke-types").html(result.types[0].name55);




	// console.log(`Name: ${result.name}`);
	// console.log(`Number: ${result.pkdx_id}`);
	// console.log(`Height: ${result.height}`);
	// console.log(`Weight: ${result.weight}`);


	$(".js-pokemon-modal").modal("show");
};

PokemonApp.handleError = function (result) {
	console.log("Pokemon Component Error");
	console.log(theError.responseText)

}


PokemonApp.idFromUri = function (pokemonUri) {
	var uriSegments = pokemonUri.split("/");
	var secondLast = uriSegments.length - 2;
	return uriSegments[secondLast];
};

$(document).ready(function(){

	$(".js-show-pokemon").on("click", function(theEvent){
		console.log("CLICK!");

		//data-pokemon-uri="api/v1/pokemon/57/"
		var theUri = $(theEvent.currentTarget).data("pokemon-uri");

		var pokeComponent = new PokemonApp.PokemonComponent( theUri );
		pokeComponent.render();
	

	});
});