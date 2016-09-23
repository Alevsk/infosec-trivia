var points = 0;
var button = {};
var successSound = ['files/2AH.wav','files/9BH.wav','files/20H.wav','files/A1H.wav','files/A0H.wav','files/hadouryu.wav','files/shoryuryu.wav'];
var errorSound = ['files/33H.wav','files/32H.wav','files/31H.wav','files/27H.wav','files/'];

function wait(ms){
	var start = new Date().getTime();
	var end = start;
	while(end < start + ms) {
		end = new Date().getTime();
	}
}

function playSound(path) {
	var audioElement = document.createElement('audio');
	audioElement.setAttribute('src', path);
	audioElement.setAttribute('autoplay', 'autoplay');
	audioElement.play();
	audioElement.remove();
}

function getQuestion() {
	$.get( "app.php", { cmd: "getQuestion" } )
	.done(function( data ) {
		
		$('#qHolder').html("");
		var title = $('<h1></h1>').html(data.Question);
		$('#qHolder').append(title);
		$('#qHolder').append("<p>&nbsp;</p>");
		for(var i in data.Answers) {
			var a = $('<a class="btn btn-primary btn-lg sendAnswer" href="#" role="button"></a>').html(data.Answers[i].answer);
			a.data("aId",data.Answers[i].id);
			var p = $('<p style="text-align: center;"></p>').append(a);
			$('#qHolder').append(p);
		}

		$("a.sendAnswer").attr("disabled", false);

	});
} 

$(document).ready(function() {

	$('#myModal').modal('show');

	$('body').on('click', 'a.sendAnswer', function() {

		$("a.sendAnswer").attr("disabled", true);

		button = $(this);
		$.get( "app.php", { cmd: "checkAnswer", id:$(this).data("aId") } )
		.done(function( data ) {
			
			if(data.Answer == "yes") {
				points += 10;
				button.addClass('btn-success');
				playSound(successSound[Math.floor(Math.random()*successSound.length)]);
			}
			else {
				points -= 10;
				button.addClass('btn-danger');
				playSound(errorSound[Math.floor(Math.random()*errorSound.length)]);
			}

			$('#pts').html(points + ' pts');

			setTimeout(getQuestion, 1000);
			
			//getQuestion();
		});
	});

	$('#startGameButton').click(function() {

		playSound('files/9FH.wav');
		
		$('#myModal').modal('toggle');

		$('.timer').startTimer({
			onComplete: function(element){
				element.addClass('is-complete');
				$('#finalScore').html('Tu puntiación fue de ' + points + ' pts');
				$('#finalModal').modal('toggle');
				playSound('files/win.mp3');
			}
		});
		
		$('#pts').html(points + ' pts');
		getQuestion();

	});
});