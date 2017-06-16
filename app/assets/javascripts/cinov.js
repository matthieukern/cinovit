//= require main
//= require poll
//= require questions
//= require answers
//= require error
//= require reset
//= require storage

// Function that will be executed after the scripts loading
function start() {
    $( "body" ).empty();
    $( "body" ).append("<div id='infos'></div>" +
		       "<div id='cinov'></div>" +
		       "<div id='popup'></div>" +
		       "<div id='toolbar'></div>" +
			   "<div style='margin-top: 10px;'>" +
			      "App by:<br>" +
				  "Michel ANTOINE (michel1.antoine@epitech.eu)<br>" +
				  "Matthieu KERN (matthieukern@gmail.com)" +
			   "</div>");
    infos = $( "#infos" );
    toolbar = $( "#toolbar" );
    cinov = $( "#cinov" );
    popup = $( "#popup" );
    popup.hide();
    main();
}

$( document ).ready(function() {
      start();
});
