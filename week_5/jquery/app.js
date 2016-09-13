
$(document).ready(function(){


      $('.hello-button').on('click', function () {
        alert('hello world');
      });

      $('.js-tacos').on('click', function(){
        alert('Tasty Tacos');
      

      $("body").append("<h1>Empanadas </h1>");
      $(".js-pizza").prepend("<h1>Burgers</h1>")
      $(".js-pizza").before("<h1>Fries</h1>")
      $(".js-pizza").after("<h1>Milkshake</h1>")
  });

      // $(".js-like-button").on("click", function(){
      // 	$(".js-like-button").html("Like")
      
      $(".fried-rice").on("click", function(){
      	$(".buttonless").fadeOut("slow", function(){

      	});
      $(".unicorn-mode").on("click", function(){
      	$(".unicorn").('background-color', 'yellow')

      });

      });


      // })

});
