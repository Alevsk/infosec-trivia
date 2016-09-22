var points = 0;

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
			var p = $('<p></p>').append(a);
			$('#qHolder').append(p);
		}

	});
} 

$(document).ready(function() {

	$('#myModal').modal('show');

	$('body').on('click', 'a.sendAnswer', function() {
		$.get( "app.php", { cmd: "checkAnswer", id:$(this).data("aId") } )
		.done(function( data ) {
			
			if(data.Answer == "yes")
				points += 10;
			else
				points -= 10;

			$('#pts').html(points + ' pts');

			getQuestion();
		});
	});

	$('#startGameButton').click(function() {
		
		$('#myModal').modal('toggle');

		$('.timer').startTimer({
		  onComplete: function(element){
		    element.addClass('is-complete');
		    $('#finalScore').html('Tu puntiación fue de ' + points + ' pts');
		    $('#finalModal').modal('toggle');
		  }
		});
		
		$('#pts').html(points + ' pts');
		getQuestion();

	});
});