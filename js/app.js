function getQuestion() {
	$.get( "app.php", { cmd: "getQuestion" } )
	.done(function( data ) {
		$('#qHolder').html("");
		var title = $('<h1></h1>').html(data.Question);
		$('#qHolder').append(title);
		$('#qHolder').append("<p>&nbsp;</p>");
		for(var i in data.Answers) {
			var a = $('<a class="btn btn-primary btn-lg sendAnswer" href="javascript:void(0)" role="button"></a>').html(data.Answers[i].answer);
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
			
			if(data.Answer == "yes") {
				console.log("correct");
			}
			getQuestion();
		});
	});

	$('#startGameButton').click(function() {
		
		$('#myModal').modal('toggle');
		getQuestion();

	});
});